#!/bin/zsh

scp custom_config.moon meintetrisstein.de:~/meintetrisstein.de/
ssh meintetrisstein.de "cd ~/meintetrisstein.de; git pull; git submodule foreach git pull origin master; nohup ./run.zsh -ps"
