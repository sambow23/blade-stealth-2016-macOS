This readme is based on red-green/razer_blade_stealth_hackintosh and adapted to this model
===

Razer Blade Stealth 2016 (Skylake) 
===

![ABTM](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/abtm.png)


Intro
---

This Repo has my Clover/OpenCore EFI folder for anyone trying to run macOS 10.14+ on their Razer Blade Stealth 2016 (Skylake model)

Specs:

__**Razer Blade Stealth 2016**__
- **CPU** : Intel Core i7-6500U 2C4T 2.5GHz (3.1GHz turbo)
- **RAM** : 8GB dual-channel 1867MHz LPDDR3
- **GPU** : Intel HD 520
- **Storage** : Samsung PM951 256GB NVMe M.2
- **Screen** : 12.5" 2560x1440 with touch
- **WiFi** : DW1560 (Working natively on Catalina and Big Sur (no patches)
- **Soundcard** : Realtek ALC298
- **Battery** : 53.6WHr

Hardware compatibility
---

TL;DR - 

**What works:**

- CPU power management
- Readng CPU temperature
- GPU acceleration and video codecs
- SSD
- Wireless (wifi, bt, Continuity, Airdrop) **[after being replaced]**
- Sleep, lid sleep and lid wake (need to re-open lid a second time to wake display)
- Trackpad including gestures
- Sound through headphone jack and speakers (including persistence through sleep)
- Internal microphone
- All USB ports except the USB-C
- Screen full resolution, brightness
- HDMI
- Battery precentage, charging
- SideCar over USB and wireless (in Catalina/Big Sur)
- iMessage and iCloud
- Displayport output on the TB3 port

**What does not work:**
- Internal webcam with Facetime (Disabled)
- Touchscreen (Disabld)

**Not tested:**

- Changing the keyboard color through some custom apps, also enabling the logo light
- Virtualization (VT-x)
- USB-C functionality on the TB3 port
- Apple Watch Unlock 
- Thunderbolt 3 

CPU
-----

The [i7-6500U](https://ark.intel.com/content/www/us/en/ark/products/88194/intel-core-i7-6500u-processor-4m-cache-up-to-3-10-ghz.html) works well out of the box. Idles below 1.20GHz (idles at 800MHz), Turbo goes up to 3.1GHz as usual. Used `CpuTscSync.kext` to fix sleep issues
![cpu](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/cpu.png)

GPU/Display
-----

GPU worked out of the box with the default `platform-id`, including full video decode and all supported resolutions, HiDPI does work but you need to manually enable it and patch in support with https://github.com/xzhih/one-key-hidpi

Screen will most likely be black on wake, can be fixed by re-opening the lid.
![display](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/display.png)

SSD
-----

Thankfully my Samsung PM951 works out of the box but I belive power management isnt working correctly, even with NVMeFix.kext the battery drains very quickly and there is no sign of the kext detecting my SSD in `IORegristyExplorer`. There is probably a solution I have not looked at yet.
![ssd](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/ssd.png)

Wifi and Bluetooth
-----

The included Killer wifi/BT card will also not work in macOS as it lacks drivers. I replaced mine with a DW1560 and it works completely out of the box, including Bluetooth, no special setup needed
![BT](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/bt.png)
![wifi](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/wifi.png)

Bluetooth audio seems to work flawlessly, tested with `Samsung Galaxy Buds+` and `Sennheiser Momentum 2 Wireless`
Seem to use proper codecs out of the box, no latency or sound quality issues.

![BT-audio](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/bt-audio.png)

Sleep
-----

This one took a bit of time (multiple weeks) to track down. I either had it freezing instantly after waking up from sleep, or it instantly waking up when it finally went to sleep. At first I thought my CPU PM was broken so I re-did that a lot of times, then I thought it was macOS darkware issues (it wasn't), but I finally locked it down to it being the USB Controller and Killer Wi-Fi.

- USB -
I had to remove `USBInjectAll.kext`, use `Skylake Instawake` patches on my DSDT via MacASL, and remap my ports with [USBMap](https://github.com/corpnewt/USBMap), creating a `USBMap.kext`. I did some extra tweaks such as disabling the webcam and touchscreen as I do not use them. 

- Killer Wi-Fi - 
I did not realize it was causing sleep issues until I replaced it with the DW1560, and it magically stopped waking up randomly

Trackpad
-----

It's a Synaptics 15320205 multitouch I2C trackpad, I use a older test version of VoodooI2C plus VoodooI2CSynaptics to fix some weird stuttering and functionality after sleep with an SSDT-XOSI to enable the I2C controller. All the native multitouch gestures work, though gesture detection is a bit hit-or-miss and sensitivity is extremely high by default, can be fixed by lowering the sensitivity in Touchpad settings.
Sometimes when changing the VoodooI2C version, it wont work immediately, you just need to re-do kext cache even if it's not installed in your extensions directory.
![trackpad](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/trackpad.png)

Sound
-----

Sound card is the Realtek ALC298. Works perfectly with [AppleALC](https://github.com/acidanthera/AppleALC/wiki/Supported-codecs) with `layout-id=22`.
Speaker, Headphone and Mic inputs and outputs work out of the box and no distorted audio after sleep.
![output](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/output.png)
![input](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/input.png)

USB
-----
USB works out of the box
I had to remove `USBInjectAll.kext`, use `Skylake Instawake` patches on my DSDT via MacASL, and remap my ports with [USBMap](https://github.com/corpnewt/USBMap), creating a `USBMap.kext` (Does disable touchscreen and webcam)

Display Outs
-----

The laptop has a HDMI port and a DisplayPort-over-Thunderbolt 3 as a display output. I tried my USB-C to DVI-D DualLink adapter (uses DisplayPort interface) and it works if I have it plugged in before the laptop boots, doesn't work while its already booted into macOS. HDMI worked out of the box.

Thunderbolt
-----

I do not own any Thunderbolt 3 Devices, so I cannot test it's functionality.

Battery
-----

Using a DSDT patch in the MaciASL patch repo named "bat - Razer Blade (2014)", and SMCBatteryManager, I was able to get battery status and precentage working. I tried red-green's SSDT as His 2018 Blade uses the same battery label but I guess his ACPI is entirely different than mine so it does not work in my case.
![battery](https://github.com/sambow23/blade-stealth-2016-macOS/blob/master/images/battery.png)


Keyboard Illumination
-----
Not looked into yet

UEFI Firmware
-----

In the UEFI firmware, I needed to disable these options to get a usable system:

- Thunderbolt support (fully disabled)
- Security device support
- Network stack
- Secure boot
- Fast boot
- Launch CSM
- CFG Lock

Thunderbolt remains off as I do not have any uses for it yet, but should probably be left off.

Stuff in this repo
---

The `EFI` Folder has my unmaintained Clover folder, it should boot Catalina fine but a lot of things don't work or as not as well.

The `OC` Folder contains the stable, current version of OpenCore to boot macOS Catalina on this machine

The `OC-Bs` Folder contains the some-what stable, experimental version of OpenCore to boot macOS Big Sur Public Beta on this machine. (Should have feature parity with the Catalina version)

`OC-DSDT` - Contains initial DSDT for OpenCore, unmaintained for now

`L:E Kexts` - Has some kexts in the `Library/Extensions` folder that I used in my initial Catalina config for Clover, unmaintained.

Conclusion?
---
Works very well after doing some work, like red-geen said, makes a great dark MacBook Pro.

License
-----

Work in this repo, including previous commits (SSDTs, config files, etc) is distributed under a [Creative Commons Attribution-NonCommercial-ShareAlike](https://creativecommons.org/licenses/by-nc-sa/3.0/) (CC BY-NC-SA) 3.0 License. All others' work (clover, kexts, drivers) retains the original license it was distributed with.

This readme layout, style, and some text does not belong to me but to [red-green](https://github.com/red-green/razer_blade_stealth_hackintosh). Thank you for making this wonderful guide, it has inspired me to do this project on my 2016 Blade Stealth and your repo has helped me in more ways than I can imagine.
