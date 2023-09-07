# BSPWM

*This is a minimal install*

## BSPWM Installation
- First install Arch linux
- ```sudo pacman -S xorg xorg-server xorg-xinit xf86-video-fbdev git```
- ```sudo pacman -S picom bspwm polybar sxhkd dunst feh alacritty```
- ```git clone https://github.com/miscellaneous-mice/BSPWM.git```
- Install the specified packages given below. Feel free to choose
- copy the init files from BSPWM to home folder and delete duplicate default files
  ```
  cp ~/BSPWM/init_files/.bashrc ~/
  cp ~/BSPWM/init_files/.xinitrc ~/
  ```
- cd into ~/.config folder and : ``` mkdir bspwm sxhkd polybar picom dunst```
- Folder configuration
  ```
  - See which folder are missing before going to the next step
    ~/.config/bspwm
    ~/.config/sxkhd
    ~/.config/picom
    ~/.config/polybar
    ~/.config/dunst
  - Else mkdir these folders

  - Make the custom commands folder
      mkdir ~/custom_commands
  ```
- Now to copy default config files into .config folder :
  ```
  -> cp ~/BSPWM/bspwm/bspwmrc ~/.config/bspwm/
  -> cp ~/BSPWM/sxkhd ~/.config/sxkhd/
  -> cp ~/BSPWM/neofetch/config.conf ~/.config/neofetch/
  -> cp ~/BSPWM/alacritty/alacritty.yml ~/.config/alacritty/
  -> cp /etc/xdg/picom.conf ~/.config/picom/
  -> cp ~/BSPWM/polybar/config.ini ~/.config/polybar/
  -> cp ~/etc/dunst/dunstrc ~/.config/dunst/
  -> cp ~/BSPWM/custom_commands/.my_custom_commands.sh ~/custom_commands/
  ```
- Reboot ```sudo reboot```

## Packages
- code -> VScode
- feh -> Used to set wallpaper
- firefox -> Browser duuuh
- thunar -> File manager
- alsamixer -> Used to control audio levels using our terminal
- alacritty -> Our terminal for window manager
- tty-clock -> Simplistic terminal clock
- rofi -> Used for searching our apps. i.e. similar to dmenu
- polybar -> Our top bar
- lxappearance -> Used to apply our theme, icons and fonts to the window manager and gtk-3 supported applications
- nord theme ```(https://www.xfce-look.org/p/1267246/)``` -> Load into ~/.themes (create the folder using mkdir)
- nord icons ```(https://www.xfce-look.org/p/1937741)```  -> Load into ~/.icons (create the folder using mkdir)
- Jetbrains nerd fonts ```(https://www.nerdfonts.com/font-downloads)``` -> Load into ~/.fonts (create the folder using mkdir)
- Starship ```(https://starship.rs/)``` -> This is the theme applied to our alacritty terminal

## Note
- In BSPWM/.xinitrc file replace the display name and resolution with yours
``` xrandr --output display-name --mode resolution```
- *You can find this by just typing ```xrandr```*

## References
- ```https://www.youtube.com/watch?v=XTcf8g54RuU```
