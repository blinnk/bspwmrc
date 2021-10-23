#!/usr/bin/env sh

rclone mount --daemon drive: /home/blinnnk/gdrive/ &
rclone mount --daemon --drive-shared-with-me drive-theia: /home/blinnnk/gdrive-theia/ &
rclone mount --daemon dropbox: /home/blinnnk/dropbox/ &
