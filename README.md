# LineageOS 19.1 Releases
WARNING: THIS IS CUSTOM FIRMWARE, WHICH VOIDS THE WARRANTY OF YOUR DEVICE. I AM NOT RESPONSIBLE FOR ANY HARDWARE FAILURES, LOSS OF DATA OR EXPLOSIONS. USE AT YOUR OWN RISK.
ANDROID 12L IS VERY UNSUPPORTED. BUGS AND PERFORMANCE ISSUES MAY ARISE COMPARED TO PREVIOUS VERSIONS

# Installation instructions
1) Boot to your custom recovery
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
If you encounter a bug, glitch or issue with the ROM, submit a bug report. Please at the very minimum ensure you contain this information:
- Device info
-   Model (ie zerofltexx/G920F)
-   Android version
-   Build version (date of build)
- Description of the issue
- Is it reproducible? If so post the steps of how you replicated it
- Necessary logs (logcat -b all, dmesg, last_kmsg, app crash logs etc)
- If possible, a temporary workaround or fix that helped you

If you do not attempt to explain the issue you are having clearly, or post low effort bug reports lacking info, I will close them.  

# Unsupported configs
If you use a custom kernel, or any other kernel or boot.img that doesn't come with the ROM, expect bugs and issues to arise. I will not fix problems present in other kernels, as it is too time consuming and too much effort for me to do. Using older kernels can cause no boot, no bluetooth among other issues.
