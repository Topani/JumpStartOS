#Dell Inspiron B130 32-bit laptop#

This article is specifically written for my installation of Ubuntu 16.04.1 Server on my Dell Inspiron B130 laptop. My intentions was to create as lightweight of an install for this old 32-bit laptop and gain some more life out of it. I probably could've used something like Arch Linux to make it even more lightweight, but to save time I went with what I knew, Ubuntu.

##Needs##
* Minimal install size
* Lightweight on the resources
* Light GUI interface

##System Overview##
* 32-bit
* 1 GB RAM
* 60 GB HDD
* DVD-RW drive

##System Details##
*output given from command* `$> lspci`
* 00:00.0 Host bridge: Intel Corporation Mobile 915GM/PM/GMS/910GML Express Processor to DRAM Controller (rev 03)
* 00:02.0 VGA compatible controller: Intel Corporation Mobile 915GM/GMS/910GML Express Graphics Controller (rev 03)
* 00:02.1 Display controller: Intel Corporation Mobile 915GM/GMS/910GML Express Graphics Controller (rev 03)
* 00:1b.0 Audio device: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) High Definition Audio Controller (rev 03)
* 00:1c.0 PCI bridge: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) PCI Express Port 1 (rev 03)
* 00:1c.3 PCI bridge: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) PCI Express Port 4 (rev 03)
* 00:1d.0 USB controller: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) USB UHCI #1 (rev 03)
* 00:1d.1 USB controller: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) USB UHCI #2 (rev 03)
* 00:1d.2 USB controller: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) USB UHCI #3 (rev 03)
* 00:1d.3 USB controller: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) USB UHCI #4 (rev 03)
* 00:1d.7 USB controller: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) USB2 EHCI Controller (rev 03)
* 00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev d3)
* 00:1f.0 ISA bridge: Intel Corporation 82801FBM (ICH6M) LPC Interface Bridge (rev 03)
* 00:1f.1 IDE interface: Intel Corporation 82801FB/FBM/FR/FW/FRW (ICH6 Family) IDE Controller (rev 03)
* 02:00.0 Ethernet controller: Broadcom Limited BCM4401-B0 100Base-TX (rev 02)
* 02:03.0 Network controller: Broadcom Limited BCM4318 [AirForce One 54g] 802.11g Wireless LAN Controller (rev 02)


##Install Base##
**Installed Ubuntu 16.04.2 LTS (xenial)**
* Normal system utilities only
* 2 GB Swap
* 58 GB mounted to /

------------------------------------------

#After Install#


