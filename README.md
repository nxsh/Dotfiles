# My Dotfiles
* This repo contains the 'dot' (`.xyz`) files I use to customise my linux installation, as well as install notes for packages

## Dotfiles To Do

### PRIORITY
- sound and brightness notifications
- ncmpcpp spotify playlists
- create system to sync dotfiles to this repo and the corresponding directory on my machine autonomously
  + e.g. sync i3 config to `~/.config/i3/config`
- create script to copy local uni files to xanthus as backups

## Latest Changes
- `mopidy` and `mopidy-spotify` installed from PPA
  + workin correctly but no playlist support
  + when creating playlists, an empty duplicate is created
  
### i3/i3blocks
- edit i3blocks scripts to make them more interesting
  + change the battery scripts so that the percentage changes color when charge is low, medium, or high  
  + create volume notification script/sound applet, maybe use `dunst`

### Global Linux
- terminal calendar with google support, `gcalcli`, `khan` or `calcurse` are options
- update documentation
- install powerline-like application for terminal, vim etc
- test `acpilight`
- test using `thermald` over `thinkfan`
- test out `bumblebee` for GPU management

### Theming
- Test out `pywal`

### Vim
- use pathogen to manage plugins
- install markdown/language syntax plugins
- `listchars`

### Mail
- configure mutt properly
