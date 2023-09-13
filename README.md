# BSPWM

*This is a minimal install*

![BSPWM](https://github.com/miscellaneous-mice/BSPWM/assets/79500624/a222e133-3118-4060-b330-66baeb6fb99c)

## BSPWM Installation
- First install Arch linux
- Go through the notes given at the end of the page
- ```sudo pacman -S xorg xorg-server xorg-xinit xf86-video-fbdev git```
- ```sudo pacman -S picom bspwm polybar sxhkd feh alacritty```
- ```git clone https://github.com/miscellaneous-mice/BSPWM.git``` (In the home directory)
- Install the following dependencies given below. Feel free to choose!
- copy the init files from BSPWM to home folder and delete duplicate default files
  ```
  cp ~/BSPWM/init_files/.bashrc ~/ (Delete the old bashrc file)
  cp ~/BSPWM/init_files/.xinitrc ~/
  ```
- cd into ~/.config folder and : ``` mkdir bspwm sxhkd polybar picom```
- Folder configuration
  ```
  - See which folder are missing before going to the next step
    ~/.config/bspwm/
    ~/.config/sxkhd/
    ~/.config/picom/
    ~/.config/polybar/
    ~/.config/rofi/
    ~/.themes/
    ~/.icons/
    ~/.fonts/
  - Else mkdir these folders

  - Make the custom commands folder
      mkdir ~/custom_commands/
  ```
- Now to copy default config files into .config folder :
  ```
  -> cp ~/BSPWM/bspwm/bspwmrc ~/.config/bspwm/
  -> cp ~/BSPWM/sxkhd/sxkhdrc ~/.config/sxkhd/
  -> cp ~/BSPWM/rofi/config.rasi ~/BSPWM/rofi/nord.rasi ~/.config/rofi/ 
  -> cp ~/BSPWM/neofetch/config.conf ~/.config/neofetch/
  -> cp ~/BSPWM/alacritty/alacritty.yml ~/.config/alacritty/
  -> cp /etc/xdg/picom.conf ~/.config/picom/
  -> cp ~/BSPWM/polybar/config.ini ~/.config/polybar/
  -> cp ~/BSPWM/custom_commands/.my_custom_commands.sh ~/custom_commands/
  ```
- Now make these files executable using ```chmod +x```
  ```
  ~/.config/bspwm/bspwmrc
  ~/custom_commands/.my_custom_commands.sh
  ```
- Reboot ```sudo reboot```
- Use lxappearance to apply the install the installed themes, icons and fonts.

## Dependencies
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
- nord theme (https://www.xfce-look.org/p/1267246/) -> Load into ~/.themes
- nord icons (https://www.xfce-look.org/p/1937741)  -> Load into ~/.icons
- Jetbrains nerd fonts (https://www.nerdfonts.com/font-downloads) -> Load into ~/.fonts
- Starship (https://starship.rs/) -> This is the theme applied to our alacritty terminal

## Note
- At the start I've install xf86-video-fbdev, but check which graphics driver you use and install that appropriately. If graphics drivers installed then skip this.
- In BSPWM/init_files/.xinitrc file replace the display name and resolution with yours
``` xrandr --output display-name --mode resolution```
- *You can find display by just typing ```xrandr```*
- The shorcuts definition specified in comments may be wrong so kindly verify the code
- Run tty-clock in terminal by ```tty_clock_time```

## References
- https://www.youtube.com/watch?v=XTcf8g54RuU
