# Dell Inspiron B130 32-bit laptop

This article is specifically written for my installation of Ubuntu 16.04.1 Server on my Dell Inspiron B130 laptop. My intentions was to create as lightweight of an install for this old 32-bit laptop and gain some more life out of it. I probably could've used something like Arch Linux to make it even more lightweight, but to save time I went with what I knew, Ubuntu.

## Needs
* Minimal install size
* Lightweight on the resources
* Light GUI interface

## System Overview
* 32-bit
* 1 GB RAM
* 60 GB HDD
* DVD-RW drive

## System Details
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


# OS Installation
## Installed Ubuntu Server 16.04.2 LTS (xenial)
* Normal system utilities only
* 2 GB Swap
* 58 GB mounted to /

------------------------------------------

# After Install

## WiFi Network Setup
Wireless LAN controller is a Broadcom Limited BCM4318. Driver for this network controller is not a part of the normal Ubuntu driver set and I've found also not part of any other Linux variant. Remember this is a server OS and I'm trying to have some GUI options. Network Manager is a software package that includes a text gui wireless network manager. Driver and Network Manager can be installed with the following commands and also requires a reboot:

```bash
#updates
sudo apt-get update
sudo update-pciids

#wireless controller driver
sudo apt-get install firmware-b43-installer

#install network manager
sudo network-manager

#reboot
sudo reboot
```
### More About Network Interfaces
Since this is a laptop running Ubuntu server of course I disconnected the wired LAN as soon as the wireless connection was established. Then I ran into an odd behavior where the boot up was waiting 5 minutes for the wired LAN network connection to start, which would end in timeout before boot would proceed. Either way this is a laptop and will mostly never have a hardwired connection. To resolve this 5 minute boot wait I had to change my */etc/network/interfaces* file to have *allow-hotplug* for my wired LAN connection. In my system this is network interface *eth0*. Currently my */etc/network/interfaces* file has these contents:
```bash
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
#auto eth0
allow-hotplug eth0
iface eth0 inet dhcp
```

## GUI Install
I opted to install OpenBox, which is a minimal multi-window desktop UI. It is highly customizable, but right now I really only wanted it for xwindows, multi-windows open, and for a graphical browser. OpenBox requires for xwindow support to be installed. Commands to install both are here:
```bash
sudo apt-get install xorg
sudo apt-get install openbox
```
Reference: https://help.ubuntu.com/community/ServerGUI
## Other Tools
OpenBox is basically a blank screen. Two useful tools I found that I needed are a battery monitor and a clock. These things are already on the system open a terminal and run them with these commands.
* `date` - Gives date and time in terminal window
* `xclock` - xwindow analog clock
* `batmon` - xwindow battery indicator and info 
