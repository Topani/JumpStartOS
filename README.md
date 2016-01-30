# JumpStartOS
Collection of links, commands, and scripts to run after an OS install

## Summary
Some commands will be included in this README file so they can be copy pasted. Additionally they should all be included in the scripts of this repo, and therefore can be executed as scripts on a new OS.

## Getting Git
First step after installing an OS would be to download the scripts in this project so they can be executed. One way to do this would be to install Git on the system and clone this directory.
### Ubuntu
Git can be quickly installed on an Ubuntu or Ubuntu-derived system with the following command:
```bash
sudo apt-get install git
```
The lines above will only install the version found in the Ubuntu software repositories, and it may not be the latest version. Execute the commands below to install the git-core ppa repository and install the latest version of git.
```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```
Check Git version with the following command:
```bash
git --version
```
[Visit Git website here.](https://git-scm.com/)
### Git clone
Clone this repository with the following Git command:
```bash
git clone https://github.com/Topani/JumpStartOS.git
```
