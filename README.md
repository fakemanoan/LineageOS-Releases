# LineageOS 19.1 Releases
WARNING: THIS IS CUSTOM FIRMWARE, WHICH VOIDS THE WARRANTY OF YOUR DEVICE. I AM NOT RESPONSIBLE FOR ANY HARDWARE FAILURES, LOSS OF DATA OR EXPLOSIONS. USE AT YOUR OWN RISK.
ANDROID 12L IS VERY UNSUPPORTED. BUGS AND PERFORMANCE ISSUES MAY ARISE COMPARED TO PREVIOUS VERSIONS

# Installation instructions
1) Boot to your custom recovery (I am using TWRP)
2) Wipe Caches, Data, System
3) Flash/sideload release
4) Flash gapps/magisk if necessary
5) Reboot (DO NOT INSTALL TWRP APP OR YOU WONT BE ABLE TO BOOT)

# Gapps
There are several options for gapps. We want ARM64 and Android 12.1

- For OpenGapps, there is an "unofficial" google drive with updated 12.1 installers.
- BitGapps works fine
- MindTheGapps can be made to work by modifying the installer zip file. You can get a pre-modified one in this releases section also.

# Reporting a bug/issue
If you encounter a bug, glitch or issue with the ROM, submit a bug report. At a minimum, ensure you contain this information:
Device info
-   Model (device code name [zerofltexx] or model [G920F] will suffice)
-   Android version
-   Build version (date of build you used)
Issue
- Description of the issue
- Is it reproducible? If so post the steps of how you replicated it
- Necessary logs (logcat -b all, dmesg, last_kmsg, app crash logs etc)
- If possible, a temporary workaround or fix that helped you
- If necessary, include screenshots

Posting bug reports without the required info may result in me closing it. If I don't have the right info, I can't fix it.

Don't post bug reports if:
- You are having a LineageOS specific issue (ie you want a different launcher)
- A similar bug report is open
- You are asking for an ETA for a build/device

# Unsupported configs
I provide support to my ROMs based on how they come out of the box. If you;
- Install root
- Xposed or similar mods
- Custom Kernels
- Install on an unsupported device (see compatability.md for supported devices)
I will not provide support. It would be too time consuming for me to do so. Hope you understand. 
