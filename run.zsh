#!/bin/zsh

env=development
serve=true

if [ "$1" = "-t" ]
  then shift 1
  serve=true
  env=test
fi

if [ "$1" = "-p" ]
  then shift 1
  serve=false
  env=production
fi

if [ "$1" = "-ps" ]
  then shift 1
  serve=true
  env=production
fi

if $serve
  then ./_lazuli/lapis term
fi
./_lazuli/moonc .
./_lazuli/lapis build "$@"
./_lazuli/lapis migrate "$@"
if $serve
  then ./_lazuli/lapis server "$@"
fi
