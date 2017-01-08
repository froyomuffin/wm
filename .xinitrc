# Fix right click 'x' cursor
xsetroot -cursor_name left_ptr

# Load keyboard and mouse modifications
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Hide mouse
unclutter -idle 3 &

# Disable screen saving
xset s off
xset -dpms s off

# bspwm
sxhkd &
exec bspwm

# Android-studio
export _JAVA_AWT_WM_NONREPARENTING=1

# Reset pulseaudio
pulseaudio -k
