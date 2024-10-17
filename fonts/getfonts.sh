#!/bin/sh
fetch -O /tmp/CodeNewRoman.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CodeNewRoman.zip &&
unzip -d /tmp/CodeNewRoman /tmp/CodeNewRoman.zip &&
mv /tmp/CodeNewRoman/CodeNewRomanNerdFont-Regular.otf $HOME/.config/fonts/ &&
rm -rf /tmp/CodeNewRoman /tmp/CodeNewRoman.zip
