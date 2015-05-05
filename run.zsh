#!/bin/zsh

env=development
serve=true

if [ "$1" = "-t" ]
  then serve=true
  env=test
fi

if [ "$1" = "-p" ]
  then serve=false
  env=production
fi

if [ "$1" = "-ps" ]
  then serve=true
  env=production
fi

if $serve
  then ./_lazuli/lapis term
fi
./_lazuli/moonc .
./_lazuli/lapis build "$env"
./_lazuli/lapis migrate "$env"
if $serve
  then ./_lazuli/lapis server "$env"
fi
