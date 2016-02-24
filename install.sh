#!/bin/sh
cp -rs $(find $(pwd) -maxdepth 1 | grep -P '^'$(pwd)'\/\.(?!git)') $HOME
