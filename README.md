# BSPWM

*This is a minimal install*

![BSPWM](https://github.com/miscellaneous-mice/BSPWM/assets/79500624/e8b5d078-48cb-4631-b978-6e189cd2554e)


## BSPWM Installation
- First install Arch linux : https://github.com/miscellaneous-mice/Arch-install
- Go through the notes [notes](https://github.com/miscellaneous-mice/BSPWM#note)
- Install the display drivers and git.
```
$ sudo pacman -S xorg xorg-server xorg-xinit git
```
- Necessary packages
```
$ sudo pacman -S picom bspwm polybar sxhkd feh alacritty
```
- Git clone the repo into home directory
```
$ git clone https://github.com/miscellaneous-mice/BSPWM.git
```
- Make a backup folder
```
$ mkdir ~/Backup
```
- Install the following dependencies given below. Feel free to choose! [Dependencies](https://github.com/miscellaneous-mice/BSPWM#dependencies)
- copy the init files from BSPWM to home folder and delete duplicate default files
  ```
  $ mv ~/.bashrc ~/Backup/
  $ cp ~/BSPWM/init_files/.bashrc ~/
  $ cp ~/BSPWM/init_files/.xinitrc ~/
  ```
- cd into ~/.config folder and :
```
$ mkdir bspwm sxhkd polybar picom
```

## Folders and files configuration

- These are the directories to be checked
```
~/.config/bspwm
~/.config/sxkhd
~/.config/picom
~/.config/polybar
~/.config/rofi
~/.themes
~/.icons
~/.fonts
```
- If any of these folders are missing and make the missing directories
```
$ mkdir {missing-directory}
```
- Also make sure these specified directories are empty else move then into ```~/Backup/```
```
$ mv {directory}/* ~/Backup/
```
- Make the custom commands folder
```
$ mkdir ~/custom_commands/
```
- Now to copy default config files into .config folder :
  ```
  $ cp ~/BSPWM/bspwm/bspwmrc ~/.config/bspwm/
  $ cp ~/BSPWM/sxkhd/sxkhdrc ~/.config/sxkhd/
  $ cp ~/BSPWM/rofi/* ~/.config/rofi/ 
  $ cp ~/BSPWM/neofetch/config.conf ~/.config/neofetch/
  $ cp ~/BSPWM/alacritty/alacritty.yml ~/.config/alacritty/
  $ cp ~/BSPWM/picom/picom.conf ~/.config/picom/
  $ cp ~/BSPWM/polybar/config.ini ~/.config/polybar/
  $ cp ~/BSPWM/custom_commands/.my_custom_commands.sh ~/custom_commands/
  ```
- Now make these files executable using ```$ chmod +x {filename}```
  ```
  $ ~/.config/bspwm/bspwmrc
  $ ~/custom_commands/.my_custom_commands.sh
  ```
- Reboot ```$ sudo reboot```

## Extras
- Use lxappearance to apply the install the installed themes, icons and fonts.
- Install tty-clock
```
$ git clone https://github.com/xorg62/tty-clock.git
$ cd tty-clock
$ sudo make install
```

## Dependencies
- code -> VScode
- feh -> Used to set wallpaper
- firefox -> Browser duuuh
- thunar -> File manager
- alsa-utils (alsamixer) -> Used to control audio levels using our terminal
- alacritty -> Our terminal for window manager
- htop -> To display hardware resources being used
- rofi -> Used for searching our apps. i.e. similar to dmenu
- polybar -> Our top bar
- lxappearance -> Used to apply our theme, icons and fonts to the window manager and gtk-3 supported applications
- nord theme (https://www.xfce-look.org/p/1267246/) -> Load into ~/.themes
- nord icons (https://www.xfce-look.org/p/1937741)  -> Load into ~/.icons
- Jetbrains nerd fonts (https://www.nerdfonts.com/font-downloads) -> Load into ~/.fonts
- Starship (https://starship.rs/) -> This is the theme applied to our alacritty terminal

## Note
- In ```~/.xinitrc``` file replace the display name and resolution with yours
```
xrandr --output {display-name} --mode resolution
```
- *You can find display by just typing ```xrandr```*
- The shorcuts definition specified in comments may be wrong so kindly verify the code
- Run tty-clock in terminal by ```tty_clock_time```

## References
- https://www.youtube.com/watch?v=XTcf8g54RuU
