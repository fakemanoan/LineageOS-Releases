#!/bin/bash
echo "##########################"
echo "LINEAGE OTA RELEASE SCRIPT"
echo "##########################"
echo ""

if [ $# -lt 1 ] ; then
    echo "Usage: $0 <zips>"
    echo "Release notes from notes.md"
    exit 1
fi

for args in "$@"
do

ROM=$args
FILENAME=$(basename $ROM)
ROMNAME=$(echo $FILENAME| cut -f1 -d '-')"-"$(echo $FILENAME| cut -f2 -d '-')
ROMVERSION=$(echo $FILENAME| cut -f2 -d '-')
DEVICE=$(echo $FILENAME| cut -f5 -d '-' | cut -f1 -d '.')
ROMTYPE="UNOFFICIAL"

METADATA=$(unzip -p "$ROM" META-INF/com/android/metadata)
SDK_LEVEL=$(echo "$METADATA" | grep post-sdk-level | cut -f2 -d '=')
TIMESTAMP=$(echo "$METADATA" | grep post-timestamp | cut -f2 -d '=')

DATE=$(echo $FILENAME | cut -f3 -d '-')
ID=$(echo ${TIMESTAMP}${DEVICE}${SDK_LEVEL} | sha256sum | cut -f 1 -d ' ')
SIZE=$(du -b $ROM | cut -f1 -d '	')

case $ROMVERSION in
	19.1)
	VERSION="12L"
	;;
	*)
	VERSION=$(($(echo $ROMVERSION | cut -f1 -d '.') - 7)) 
	;;
esac

RELEASETAG="A"$VERSION"-"$(date -d @$TIMESTAMP +%d%m%Y)

URL="https://github.com/fakemanoan/LineageOS-Releases/releases/download/${RELEASETAG}/${FILENAME}"

response=$(jq -n --arg datetime $TIMESTAMP \
        --arg filename $FILENAME \
        --arg id $ID \
        --arg romtype $ROMTYPE \
        --arg size $SIZE \
        --arg url $URL \
        --arg version $ROMVERSION \
        '$ARGS.named'
)
wrapped_response=$(jq -n --argjson response "[$response]" '$ARGS.named')

if [ $(echo $ROMVERSION | cut -f2 -d '.') -eq 0 ]; then
	OTAVER=$(echo $ROMVERSION | cut -f1 -d '.')
else
	OTAVER=$ROMVERSION
fi

#! Ensure you are at the repository directory
if [ ! -d $(pwd)/ota ]; then
  mkdir $(pwd)/ota
fi

if [ ! -d $(pwd)/ota/${OTAVER} ]; then
  mkdir $(pwd)/ota/${OTAVER}
fi

echo "$wrapped_response" > ota/${OTAVER}/${DEVICE}.json
git add ota/${OTAVER}/${DEVICE}.json
echo "filename:" $FILENAME
echo "rom name:" $ROMNAME
echo "rom ver:" $ROMVERSION
echo "android version:" $VERSION
echo "device:" $DEVICE
echo "size:" $SIZE
echo "timestamp:" $TIMESTAMP
echo -e "END OF DEVICE\n\n"
done

echo "RELEASE TAG:" $RELEASETAG

gh release create $RELEASETAG -title "[LINEAGE-$ROMVERSION] $(date -d @$TIMESTAMP +%B) $(date -d @$TIMESTAMP +%Y) Update" -F notes.md

echo "Uploading files..."
for args in "$@"
do
ROMFILE=$args
ROMZIP=$(basename $ROMFILE)

echo "Uploading" $ROMZIP
gh release upload $RELEASETAG $ROMFILE
done
echo -e "\nUpload Complete"

echo "Automatically updating OTA jsons"
git commit -m "Auto update JSONs for OTA"
git push origin main
echo "end of json update"
echo ""
echo "################"
echo "END OF SCRIPT"
echo "################"
