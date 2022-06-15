setxkbmap cz; setxkbmap -option caps:swapescape; xset r rate 300 50; 
nitrogen --set-zoom-fill $(cat .bck) &
dwmblocks &
picom &
dunst &
wallpaper &
sxhkd &
while type dwm > /dev/null ; do dwm && continue || break ; done

