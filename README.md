# Dotfiles
Dotfiles (configs) for ricing, and Linux installation notes
---
 Install Debian live CD
- Use ethernet or have the firmware-iwlwifi package downloaded to the live CD stick
- if installing via ethernet, install the above package after editing the sources file
- append 'contrib non-free' to each of the debian sources (without quotes), a la:
	- deb http://ftp.uk.debian.org/debian/ stretch main contrib non-free
- install i3 gaps by installing i3 and then running i3-gaps-debian tool from github
- add config lines from i3-gaps-tool to i3 config after generating it
-------------------------------------------------------------
install Yosemite font and use it as i3 font by editing config
install lxapperance to configure gtk settings
added feh exec to i3 config

Set UK keyboard layout:
	- added xkb layout -gb exec to i3 config (still not working)
	- set UK extended layout by right clicking 'EN' at the bottom right of i3block bar
		- this launches iBus gui allowing to choose kb layout

installed tlp
installed thinkfan
set up dual monitors using xfce display settings (not fully working)
added brightness control in i3 config (only working in XFCE currently)
installed compton and added exec line in i3 config
-------------
 TLP Steps
-------------
install tlp tlp-rdw acpi-call-dkms (maybe tp-smapi-dkms check back later)

--------------
ThinkFan Steps
--------------
do not run using init.d, use system d
may need to load thinkpad_acpi module at boot (add to /etc/modules)
create a backup image to restore to of system before thinkfan is installed
then figure out how to get it working quickly with no errors
then restore to image and install correctly

--------------------------------------------------------------------------
next steps to do and document:
------------------------------
configure i3
install nvidia/intel display drivers
get brightness keys to work
install polybar
install sound monitor applet to keep track of volume visually
install spotify with ncmpccp
set up bare-metal windows hypervisor for gpu passthrough
find out how to always drain BAT1 first (removable battery)

------------------------------
install mopidy with spotify & ncmpcpp

-----------------------------------
Edited sudoers file to allow running tlp stat -b without password
This is to I can create scripts to get the battery percentage from TLP instead of the default system way
These scripts are for i3 blocks
Currently located in /usr/share/i3blocks/scriptname

------------------------------------------------------
Bugs:
--------
iBus indicator applet for keyboard not showing English UK
	- closest is English UK Extended

---------------------------------------------
Fonts: System San Francisco for general use
	Adobe Source Code Pro for monospace
----------------------------------------------

Colorscheme must be set in:
----------------------------
i3 config
Xresources
Vim
Firefox
GTK 2 & GTK 3
Rofi
