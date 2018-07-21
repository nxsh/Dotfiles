# Dotfiles
## Install and ricing notes from my Debian 9 install on my T480

- Install Debian live CD
- Use ethernet or have the firmware-iwlwifi package downloaded to the live CD stick
	- if installing via ethernet, install the above package after editing the sources file
- Append 'contrib non-free' to each of the debian sources (without quotes), a la:
	- deb http://ftp.uk.debian.org/debian/ stretch main contrib non-free
- install i3 gaps by installing i3 and then running [i3-gaps-debian tool](https://github.com/maestrogerardo/i3-gaps-deb) from github
- Add config lines from i3-gaps-tool to i3 config after generating it
- Install lxappearance to configure gtk themes
- Set UK keyboard (iBus has no English UK, settle with UK Extended until fix in [Errors](Dotfiles/Errors.md) is tested
- Install 'arandr' to configure multiple monitors when using i3
- Install bumblebee (pus Intel & Nvidia graphic drivers) to properly control Nvdia GPU
- Install Rofi, style in ~/.Xresources, and set to exec in i3 config instead of dmenu
---

## TLP 
- Install: tlp tlp-rdw acpi-call-dkms tp-smapi-dkms
- [Install guide](https://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html#installation)
--- 

## ThinkFan
- Run using systemd, not init.d
- May need to load 'thinkpad_acpi' at boot (by adding to /etc/modules)
- [X220 guide](http://x220.mcdonnelltech.com/ubuntu/) | [Debian guide](https://forum.thinkpads.com/viewtopic.php?t=119546)
  - Debian guide runs using init.d *Do not do this!*
  - X220 guide is perfect apart from the sensors to add to /etc/thinkfan.conf
  - Use `find /sys/devices -type f -name "temp*_input"` command to get proper sensor location
    - then add to /etc/thinkfan.conf
---

## i3
- Add keybindings for brightness and sound 
  - Brightness requires xbacklight to be installed
- Add execs for feh, compton, and nm-applet
- Define colors (Solarized color scheme)
- Set status_command to launch i3blocks instead of i3bar
---

## i3blocks
- Custom scripts: (currently located in: /usr/share/i3blocks/)
  - IntBat
  - ExtBat
---

## Compton
- Created compton.conf in: ~/.config/
  - Added an opacity rule for Rofi and URxvt
---

## Ncmpcpp/Mopidy/Spotify
- Install mopidy and mopidy-spotify
- Install ncmpcpp
- Create mopidy config file in ~/.config/mopidy/mobidy.conf
  - mopidy log files are also in the ~/.config/mopidy folder
- Create ncmpcpp config file in ~/.ncmcpp/config
- Start mopidy by running: nohup mopidy &
- ncmpcpp can be launched and used 
  - visualisation with mopidy and mopify-spotify not working as of yey
---

## Rofi 
- Install rofi
- Set to exec when i3 is started instead of dmenu (in i3 config)
- Customise look using ~/.Xresources
- Set a compton opacity rule so that Rofi is at 85% opacity
---

## Vim
- Not configured yet
---

## Fonts
- System San Francisco Display, 13pt (general/default font)
- Adobe Source Code Pro, 20pt (monospaced font)
- Fonts need to be defined for:
  - i3
  - Xresources
  - lxappearance (gtk2/3)
---

## Color Scheme
- For a consistent colorscheme across gtk and terminal applications, colors must be defined for:
  - i3 config
  - Xresources
  - Vim (using themes)
  - Firefox
  - GTK 2 & GTK 3 (currently using [SolArc theme](https://github.com/schemar/solarc-theme) which is a solarized version of Arc)
---
