#Installing Virtual Box Guest Additions
These are instructions for installing the virtual box guest additions. These instructions assume that you have a new and working virtual box ubuntu (or ubuntu based) linux image.
##First Mount the Virtual Box Guest Additions CD Image
1. With the virtual box image running use menus to load the guest additions CD: "**Devices > Insert Guest Additions CD image...**"
1. From a shell or terminal run `sudo mount /dev/dvd /mnt`

##Second Install needed packages
The virtual box scripts need **gcc** and **make** in order to complete installation. To get these packages run the following commands
```bash
sudo apt-get install gcc -y
```
```bash
sudo apt-get install make -y
```
##Finally run install script
```bash
sudo /mnt/VBoxLinuxAdditions.run
```
And reboot
```bash
sudo reboot
```
