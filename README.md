# BSPWM

## BSPWM Installation
- First install Arch linux
- ```sudo pacman -S xorg xorg-server xorg-xinit xf86-video-fbdev```
- ```sudo pacman -S picom bspwm polybar sxhkd dunst feh alacritty```
- - ```git clone https://github.com/miscellaneous-mice/BSPWM.git```
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
  

## Config files
- Custom commands -> same as Xmonad
- In ~/.xinitrc file at the top of the file xrandr --output Virtual-1 --mode 1920x1080


## Packages
- code
- firefox
- thunar
- alsamixer
- alacritty
- tty-clock
- rofi
- polybar
- lxappearance
- nord theme ```(https://www.xfce-look.org/p/1267246/)``` -> Load into ~/.themes
- nord icons ```(https://www.xfce-look.org/p/1937741)```  -> Load into ~/.icons
- Jetbrains nerd fonts ```(https://www.nerdfonts.com/font-downloads)``` -> Load into ~/.fonts
- Starship ```(https://starship.rs/)```

## Optional
- Turning on firewall
```sudo pacman -S ufw```
```sudo systemctl enable ufw```
```sudo systemctl start ufw```
