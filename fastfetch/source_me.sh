#!/bin/bash

# usage: add the following line to the end of .bashrc or .zshrc:
# source "$HOME/.config/fastfetch/source_me.sh"

source "${HOME}/.config/fastfetch/image.sh"

if [[ "${IMG_NAME}" == *"random"* ]]; then
  min=1
  max=${RANDOM_MAX}
  random_number=$(( RANDOM % (max - min + 1) + min ))
  export FASTFETCH_CHAFA_PATH=${HOME}/.config/images_chafa/${random_number}.png.chafa
else
  export FASTFETCH_CHAFA_PATH=${HOME}/.config/images_chafa/${IMG_NAME}.png.chafa
fi

fastfetch