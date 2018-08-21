# Dotfiles
Dotfiles (configs) for ricing, and Linux installation notes
---
Xubuntu Install Notes:
----------------------
Boot live usb 
Install gparted 
Format hard drive
Install Xubuntu
----------------------

First Run
---------------------------
Update all packages, dist-upgrade if necessary

Drivers
---------------------------
Install nvidia driver from 'Software & Updates' in settings
- Disable nvidia gpu for better battery
- Copy config files in xorg.conf.d folder
- Install tlp for better battery management
  - sudo apt install tlp tlp-rdw acpi-call-dkms
  - sudo tlp start
- Install thinkfan for better fan control
  - sudo bash
  - apt install thinkfan
  - echo "options thinkpad_acpi fan_control=1" > /etc/modprobe.d/thinkfan.conf
  - sh -c 'echo coretemp >> /etc/modules'
  - modprobe thinkpad_acpi && modprobe coretemp
  - nano -w /etc/default/thinkfan
   - add `START=yes` BEFORE `DAEMON_ARGS` line
  - copy saved thinkfan.conf to /etc/thinkfan.conf
  - systemctl enable thinkfan.service
  - reboot

Network
---------------------------
- Sign in to firefox sync
***Detail configuring software mirrors in Ubuntu
- Using Mullvad with OpenVPN
  - sudo apt install openvpn network-manager-openvpn network-manager-openvpn-gnome
  - copy saved mullvad UK ovpn file to /home/
  - import this file using network manager
    - set username to mullvad acct no
    - set password to 'm'
  - Type `about:config` in firefox address bar
  - Search for `media.peerconnection.enabled` and toggle the value to false
    - To reverse, toggle it back to true
  ***DNS LEAKS, FIGURE OUT FIX


Ricing
----------------------------
- Create second user to play around with ricing, i3, etc
- Install arc theme
- Install papirus icons
- Install git


i3
----------------------------
Install i3
- apt install i3 suckless-tools i3blocks i3lock
Install i3-gaps dependencies
- apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
  libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
  libstartup-notification0-dev libxcb-randr0-dev \
  libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
  libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
  autoconf libxcb-xrm0 libxcb-xrm-dev automake

Clone and install i3-gaps
`cd /tmp/

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install`
----------------------------



i3
-----------------------------
Install i3 and suckless-tools
Install i3-gaps dependencies
Remove only the i3 package
Install i3-gaps from github
