# Dotfiles
## Install and ricing notes from my Debian 9 install on my T480


## Debian Only Notes:
------------------
- Sudo apt update
- Reboot
- Add user (ryan) to sudoers
  - su
    - adduser <username> sudo
- Reboot
- Uninstall iBus and set keyboard to UK in XFCE settings
  - apt remove --auto-remove ibus
  - apt purge --auto-remove ibus
- Install firmware-iwlwifi package (wifi driver)
  - or install wifi firmware tarball
- Append 'contrib non-free' to each of the debian sources (without quotes), a la:
  - deb http://ftp.uk.debian.org/debian/ stretch main contrib non-free	
  - Add stretch backports to sources list if not upgrading to testing or unstable
- Sudo apt update && upgrade
- Reboot
-------------------

## Install TLP 
- Install: tlp tlp-rdw acpi-call-dkms from stretch backports
  - sudo apt-get -t stretch-backports install tlp tlp-rdw acpi-call-dkms
  - Do not install tp-smapi-dkms, it does not work with modern ThinkPads
- [Install guide](https://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html#installation)
--- 

## Configure OpenVPN (Mullvad)
- install openvpn and network-manager-openvpn packages
- Follow [Mullvad instructions](https://mullvad.net/en/guides/linux-openvpn-installation/) (Follow Ubuntu 16.04 and newer instructions)
---

## Install [Firefox Quantum](https://wiki.debian.org/Firefox#Firefox_Stable.2C_Beta_and_Nightly)
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

## Install Vim
- Remove Vim tiny `sudo apt remove vim-tiny`
- Install Vim full `sudo apt install vim`
- Create ~/.vim/ folder and ~/.vim/colors/
- Copy solarized.vim to .vim/colors/
- Create .vimrc file `sudo -E vi ~/.vimrc`
- Set vim as default editor
  - sudo update-alternatives –config editor
- To use my .vimrc while editing root owned files `sudo -E vi ~/.vimrc`

### Vim Plugins
- Install `vim-gtk` package
- Create ~/.vim/pack/plugins/start/
  - This is the folder to install plugins in
  - Example:
    - `cd ~/.vim/pack/plugins/start`
    - `sudo git clone https://github.com/tpope/vim-sensible.git`
---

## Install i3
- apt install i3 suckless-tools i3blocks i3lock
- install i3-gaps over i3 to have gaps

### i3 Notes
- Add keybindings for brightness and sound 
  - Brightness requires xbacklight to be installed
- Add execs for feh, compton, and nm-applet
- Define colors (Solarized color scheme)
- Set status_command to launch i3blocks instead of i3bar
- Set rofi to exec instead of dmenu

### i3blocks Notes
- Custom scripts: (currently located in: ~/.config/i3/i3blocks/)
  - IntBat
  - ExtBat
  - These scripts need to be made executable in order for them to appear in i3blocks bar
    - `sudo chmod +x ScriptName`
---

## Install Rofi 
- sudo apt install rofi
- Set to exec when i3 is started instead of dmenu (in i3 config)
- Customise look using ~/.Xresources
- Set a compton opacity rule so that Rofi is at 85% opacity
---

## Install Compton
- sudo apt install compton
- Created compton.conf in: ~/.config/
  - Added an opacity rule for Rofi and URxvt
---

## Copy config files
--------------------
- Copy config files in this repo to correct locations
  - Install the program that uses each config file first
- Copy xorg.conf to /ryan/
- Copy Xresources to /ryan/ and prefix with a dot (don't need gtkrc-2.0 as it is generated by lxappearance)
- Copy xorg.conf.d folder to /etc/X11/
---

## Install Pip & s-tui
-----------------------
- Install Pip
  - sudo apt-get install python-pip
- Install s-tui
  - sudo pip install s-tui
---

## Configure Music
### Install Ncmpcpp/Mopidy/Spotify
- Add mopidy archive gpg key `wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -`
- Add mopidy to sources `sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/stretch.list`
- sudo apt update
- Install mopidy and mopidy-spotify
- Install ncmpcpp
- Create mopidy config file in ~/.config/mopidy/mobidy.conf
  - mopidy log files are also in the ~/.config/mopidy folder
- Create ncmpcpp config file in ~/.ncmcpp/config
- Start mopidy by running: nohup mopidy &
- ncmpcpp can be launched and used 
- install socat to watch UDP port for visualiser

### Visualiser (everything here must be done on *every* boot)
- create fifo file for visualiser `mkfifo /tmp/mpd.fifo`
- run `while :; do socat -d -d -T 1 -u UDP4-LISTEN:5555 OPEN:/tmp/mpd.fifo; done &`
  - notice the '&' at the end, this lets the command run in the background, freeing up terminal space
- or run Visualiser script I created
---

## Ricing
- Install lxappearance to configure gtk themes
- Install 'arandr' to configure multiple monitors when using i3
- Install Papirus icons
- Install Arc theme
- Copy files from San Francisco fonts folder to ~/.fonts (only ttf files)
- Run SourceCodePro bash script as root to install adobe source code pro font

### Fonts
- System San Francisco Display, 13pt (general/default font)
- Adobe Source Code Pro, 20pt (monospaced font)
- FontAwesome, install via apt
- Use [Infinality](http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html) for better font rendering
  - Follow Debian section
- Fonts need to be defined for:
  - i3
  - Xresources
  - lxappearance (gtk2/3)
---

### Icons
- Currently using Papirus icons
---

### Color Scheme
- [Solarized theme](https://adrien.is/configuring-solarized-colors/)
- [Solarized cheat sheet](http://www.zovirl.com/2011/07/22/solarized_cheat_sheet/)
- Install arc-theme from debian backports
- Test out pywal to create color schemes from wallpaper
- For a consistent colorscheme across gtk and terminal applications, colors must be defined for:
  - i3 config
  - Xresources
  - Vim (using themes)
  - Firefox
  - GTK 2 & GTK 3 (currently using [SolArc theme](https://github.com/schemar/solarc-theme) which is a solarized version of Arc)
    - SolArc needs `libgtk-3-dev` to be installed
---