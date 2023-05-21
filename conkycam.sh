#!/bin/bash

# Set the desired virtual webcam device name
device_name="ConkyCam"

# Get the Conky window ID using xwininfo
conky_window_id=$(xwininfo -tree -root | grep "conky" | grep -oP "(0x[a-z0-9]+)")

# Get the dimensions and position of the Conky window
conky_window_geometry=$(xwininfo -id "$conky_window_id" | grep "geometry" | awk '{print $2}')

# Extract the width and height of the Conky window
conky_window_width=$(echo "$conky_window_geometry" | awk -F 'x' '{print $1}')
conky_window_height=$(echo "$conky_window_geometry" | awk -F 'x' '{print $2}')

# Unload the v4l2loopback module if already loaded
sudo modprobe -r v4l2loopback

# Load the v4l2loopback module with the desired name and resolution
sudo modprobe v4l2loopback devices=1 video_nr="$device_name" width="$conky_window_width" height="$conky_window_height"

# Use FFmpeg to capture the Conky window, resize if necessary, and stream to the virtual webcam device
ffmpeg -f x11grab -i "$DISPLAY" -vf "scale=$conky_window_width:$conky_window_height" -c:v rawvideo -pix_fmt yuyv422 -f v4l2 "/dev/$device_name"

# Unload the v4l2loopback module after stopping the streaming
sudo modprobe -r v4l2loopback
