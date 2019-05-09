# Dotfiles
## Install and ricing notes from my Debian 9 install on my T480

- Install Debian live CD
- Use ethernet or have the firmware-iwlwifi package downloaded to the live CD stick
	- if installing via ethernet, install the above package after editing the sources file
	  - iwlwifi-8265-ucode-22 to iwlwifi-8265-ucode 26 (all packages from 22-26
- Uninstall iBus and set keyboard to UK in XFCE settings
  - apt remove --auto-remove ibus
  - apt purge --auto-remove ibus
- Add user (ryan) to sudoers
  - sudo adduser <username> sudo
- Append 'contrib non-free' to each of the debian sources (without quotes), a la:
	- deb http://ftp.uk.debian.org/debian/ stretch main contrib non-free
- Add stretch backports to sources list
- Run apt update && apt upgrade to update all packages to newest
- If installation was via ethernet, install the `firmware-iwlwifi` package (needed for wifi to work)
- Reboot
- install i3 gaps by installing i3 and then running [i3-gaps-debian tool](https://github.com/maestrogerardo/i3-gaps-deb) from github
  - unzip i3-gaps-deb.zip into Downloads
  - run as bash file `./i3-gaps-deb`
- Add config lines from i3-gaps-tool to i3 config after generating it (only on first i3 configuration)
- Install lxappearance to configure gtk themes
- Install 'arandr' to configure multiple monitors when using i3
- Install bumblebee (pus Intel & Nvidia graphic drivers) to properly control Nvdia GPU
- Install Papirus icons
- Install Arc theme
- Copy files from San Francisco fonts folder to ~/.fonts (only ttf files)
- Run SourceCodePro bash script as root to install adobe source code pro font
- Install the following:
---

## [Firefox Quantum](https://wiki.debian.org/Firefox#Firefox_Stable.2C_Beta_and_Nightly)
- Download [firefox tar](https://www.mozilla.org/en-US/firefox/)
- `cd Downloads`
- `tar xvjf firefox-(version number).tar.bz2`
- Copy newly created 'firefox' folder to /opt/
  - `sudo cp -vr firefox /opt/firefox`
- Create firefox-stable.desktop file
  - `sudo -E vi /usr/share/applications/firefox-stable.desktop`
- Symlink to allow new firefox to run from command line
  - sudo ln -s /opt/firefox/firefox /usr/local/bin/
- Set new firefox as the chosen alternative
  - sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /opt/firefox/firefox 200
  - sudo update-alternatives --set x-www-browser /opt/firefox/firefox
---
