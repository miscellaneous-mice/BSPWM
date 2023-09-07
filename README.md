# BSPWM

*This is a minimal install*

## BSPWM Installation
- First install Arch linux
- ```sudo pacman -S xorg xorg-server xorg-xinit xf86-video-fbdev git```
- ```sudo pacman -S picom bspwm polybar sxhkd dunst feh alacritty```
- ```git clone https://github.com/miscellaneous-mice/BSPWM.git```
- Install the specified packages
- copy the init files from BSPWM to home folder and delete duplicate default files
- reboot by ```sudo reboot```
- cd into ~/.config folder and : ``` mkdir bspwm sxhkd polybar picom dunst```
- ```cd BSPWM```
- Now to copy default config files into .config folder :
  ```
  -> cp /BSPWM/bspwm/bspwmrc ~/.config/bspwm/
  -> cp /BSPWM/sxkhd ~/.config/sxkhd/
  -> cp /etc/xdg/picom.conf ~/.config/picom/
  -> cp /BSPWM/polybar/config.ini ~/.config/polybar/
  -> cp /etc/dunst/dunstrc ~/.config/dunst/
  ```

## Packages
- code -> VScode
- firefox -> Browser duuuh
- thunar -> File manager
- alsamixer -> Used to control audio levels using our terminal
- alacritty -> Our terminal for window manager
- tty-clock -> Simplistic terminal clock
- rofi -> Used for searching our apps. i.e. similar to dmenu
- polybar -> Our top bar
- lxappearance -> Used to apply our theme, icons and fonts to the window manager and gtk-3 supported applications
- nord theme ```(https://www.xfce-look.org/p/1267246/)``` -> Load into ~/.themes
- nord icons ```(https://www.xfce-look.org/p/1937741)```  -> Load into ~/.icons
- Jetbrains nerd fonts ```(https://www.nerdfonts.com/font-downloads)``` -> Load into ~/.fonts
- Starship ```(https://starship.rs/)``` -> This is the theme applied to our alacritty terminal

## References
- ```https://www.youtube.com/watch?v=XTcf8g54RuU```
