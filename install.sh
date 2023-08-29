#!/bin/sh
GREP=grep
if [ "$(uname)" == "Darwin" ]; then
  GREP=ggrep
fi
cp -rs $(find $(pwd) -maxdepth 1 | ${GREP} -P '^'$(pwd)'\/\.(?!git)') $HOME
