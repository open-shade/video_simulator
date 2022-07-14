#!/bin/bash

source /opt/ros/humble/setup.sh
source /home/shade/shade_ws/install/setup.sh

echo "Starting stream..."
ros2 run camera_simulator camera_simulator "$@"
