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
- copy the init files from BSPWM to home folder and move duplicate default files to backup
```
$ mv ~/.bashrc ~/Backup/
$ cp ~/BSPWM/init_files/.bashrc ~/
$ cp ~/BSPWM/init_files/.xinitrc ~/
```

## Folders and files configuration

- These are the directories to be checked
  ```
  ~/.config/bspwm
  ~/.config/sxhkd
  ~/.config/picom
  ~/.config/polybar
  ~/.config/rofi
  ~/.config/neofetch
  ~/.config/alacritty
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
- Copy the basic window manager files
```
$ cp ~/BSPWM/bspwm/bspwmrc ~/.config/bspwm/
$ chmod +x ~/.config/bspwm/bspwmrc
$ cp ~/BSPWM/sxhkd/sxhkdrc ~/.config/sxhkd/
```
- Start the basic window manager (ignore all the errors in terminal)
```
$ startx
```
- These are the basic commands to navigate the window manager
```
alt + shift + Enter : open terminal
alt + space : search programs
```
- Now to copy default config files into .config folder :
```
$ cp ~/BSPWM/rofi/* ~/.config/rofi/ 
$ cp ~/BSPWM/alacritty/alacritty.yml ~/.config/alacritty/
$ cp ~/BSPWM/picom/picom.conf ~/.config/picom/
$ cp ~/BSPWM/polybar/config.ini ~/.config/polybar/
$ cp ~/BSPWM/neofetch/config.conf ~/.config/neofetch/
$ cp ~/BSPWM/custom_commands/.my_custom_commands.sh ~/custom_commands/
```
- Now make these files executable using ```$ chmod +x {filename}```
```
$ ~/.config/bspwm/bspwmrc
$ ~/custom_commands/.my_custom_commands.sh
```
- Reboot ```$ sudo reboot```

## Setting themes, icons, fonts, Mouse cursors, wallpapers, etc.
- First download these files into the Downloads folder
  - Theme -> https://www.xfce-look.org/p/1267246/
  - Icons -> https://www.xfce-look.org/p/1937741
  - Fonts -> https://www.nerdfonts.com/font-downloads (Jetbrains nerd fonts)
- Make the appropriate directories so lxappearance can recognise them
```
$ cd ~/
$ mkdir .icons .themes .fonts
```
- Download the appropriate tools for unzipping files
```
$ sudo pacman -S unzip
```
- Extract the downloaded files into appropriate directories. First cd into the folder where you've downloaded
```
$ sudo tar -xf Nordic-darker.tar.xz -C /usr/share/themes/
$ sudo tar -xf Zafiro-Nord-Black-Blue.tar.xz -C /usr/share/icons/
$ unzip JetBrainsMono.zip
$ sudo mv *.ttf /usr/share/fonts/
```
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
