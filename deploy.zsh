#!/bin/zsh

scp custom_config.moon komischfarben.de:~/komischfarben.de/
ssh komischfarben.de "cd ~/komischfarben.de; git pull; git submodule foreach git pull origin master; nohup ./run.zsh -ps"
