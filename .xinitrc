#!/bin/sh

# Set wallpaper using feh
~/.fehbg &

# Start the status bar (using slstatus, modify if you're using another)
slstatus &

# Start any background applications (add more as needed)
# For example, you can start a compositor, like picom, if you want window effects
picom &

# Launch dwm as the window manager
exec dwm
