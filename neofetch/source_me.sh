#!/bin/bash

# usage: add the following line to the end of .bashrc or .zshrc:
# source "$HOME/.config/neofetch/source_me.sh"

source "${HOME}/.config/neofetch/image.sh"

if [[ "${IMG_NAME}" == *"random"* ]]; then
  NEOFETCH_IMG_PATH=/tmp/${IMG_NAME}
  export NEOFETCH_CHAFA_PATH=/tmp/${IMG_NAME}.chafa
else
  NEOFETCH_IMG_PATH=${HOME}/.config/neofetch/${IMG_NAME}
  export NEOFETCH_CHAFA_PATH=${HOME}/.config/neofetch/${IMG_NAME}.chafa
fi

if [ ! -f "${NEOFETCH_CHAFA_PATH}" ]; then
  if [ ! -f "${NEOFETCH_IMG_PATH}" ]; then
    curl -so "${NEOFETCH_IMG_PATH}" "${IMG_URL}"
  fi
  chafa "${NEOFETCH_IMG_PATH}" -f symbols -s 50 > "${NEOFETCH_CHAFA_PATH}"
fi

neofetch