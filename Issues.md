# This file details all errors I have experienced installing Debian on my T480, and their solutions

- Failed to raise network interfaces 
  - appears on boot, likely to do with WiFi drivers
  
- TLP
  - tlp stat -b shows that BAT0 (internal) status is unknown and 'threshold effective'

- iBus KB layout applet (indicator applet) does not have UK English, only 'UK Extended WinKeys'
  - it also opens as a window when i3 is restarted
  - same issue with nm-applet, it opens in a window when i3 is restarted (shift,$mod,r)

- i3 dual monitor, when a workspace on another monitor is inactive or unfocused the color scheme is ignored, the background is grey with white text

- Cannot get ncmpcpp's visualisation to work with mopidy/mopidy-spotify
  - 'Error while processing option "visualiser_fifo_path": option already set'
  - ncmpcpp seems to think visualisation configs have been set somewhere other than ~/.ncmpcpp/config
