# How to install LineageOS - from stock to setup screen (WIP)

WARNING: THIS PROCESS WILL WIPE YOUR DEVICE CLEAN. BACKUP ANY IMPORTANT FILES NOW.

## Pre-requesites 
- A Windows Computer with Samsung USB drivers 
- A USB cable with data capabilities 
- Samsung Galaxy S6/S6 Edge charged to 80% 

## Step 1 - Install TWRP
- Download the latest TWRP from https://drive.google.com/drive/folders/1gAlPsZIkYM-XYWu-JWJCDgwJ-60h0Ss2
- Download Odin
- Enable developer options on your device
- Enable OEM unlocking if present (NOT required for custom recovery/ROMs)
- Boot into Odin mode
- Flash the TWRP image in the AP slot in the Odin application
- Reboot into TWRP Recovery by holding power + volume up + home
- Swipe to allow modifications
- Create a backup of the system

## Step 2 - Install the ROM
- Download the latest LineageOS image from this release page
- Download any extras (Google Apps for instance)
- In TWRP recovery, select Wipe
- Select advanced wipe, and select Cache, System, Data
- Confirm when prompted
- Transfer your files you downloaded to the S6 via USB
- Go back to TWRP home
- Select install
- Select the LineageOS Zip File and wait for it to flash
- Select optional extras (Google Apps, etc) you downloaded and wait for them to flash
- Reboot system
- Wait for first boot, can take about 5 mins

# Troubleshooting
## Device not showing in Odin
Make sure your USB cable has working data. Confirm this by transfering a file to your phone in Android.
Make sure you have the right USB drivers installed from the official Samsung website
Make sure you have the correct Odin version
