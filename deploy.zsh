#!/bin/zsh

scp custom_config.moon komischfarben.de:~/komischfarben.de/
ssh komischfarben.de "cd ~/komischfarben.de; git pull; nohup ./run.zsh -ps"
