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
- 
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
  - Vim
  - Firefox
  - GTK 2 & GTK 3
  - Rofi
---