# This file details all errors I have experienced installing Debian on my T480, and their solutions

- Failed to raise network interfaces 
  - appears on boot, likely to do with WiFi drivers
  
- TLP
  - tlp stat -b shows that BAT0 (internal) status is unknown and 'threshold effective'

- iBus KB layout applet (indicator applet) does not have UK English, only 'UK Extended WinKeys'
  - it also opens as a window when i3 is restarted
  - same issue with nm-applet, it opens in a window when i3 is restarted (shift,$mod,r)
  - Uninstall iBus after debian install, it is not needed

- i3 dual monitor, when a workspace on another monitor is inactive or unfocused the color scheme is ignored, the background is grey with white text

- When shutting down or rebooting 'Watchdog0 did not stop' appears

- Mutt: 'GPGME: CMS protocol not available' error

- Powerline: some icons not appearing
  - can be replicated by cd'ing into a long directory location