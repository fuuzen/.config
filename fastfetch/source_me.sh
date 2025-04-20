#!/bin/bash

# usage: add the following line to the end of .bashrc or .zshrc:
# source "$HOME/.config/fastfetch/source_me.sh"

source "${HOME}/.config/fastfetch/image.sh"

FASTFETCH_IMG_PATH=${HOME}/.config/fastfetch/${IMG_NAME}

if [ ! -f "${FASTFETCH_IMG_PATH}" ] || [[ "${IMG_NAME}" == *"random"* ]]; then
  if curl -s -o "${FASTFETCH_IMG_PATH}" "${IMG_URL}"; then
    echo "Successfully downloaded: ${FASTFETCH_IMG_PATH}"
  else
    echo "Failed to download ${IMG_URL}"
  fi
fi


export FASTFETCH_CHAFA_PATH=${HOME}/.config/fastfetch/${IMG_NAME}.chafa
chafa "${FASTFETCH_IMG_PATH }" > "${FASTFETCH_CHAFA_PATH}"
fastfetch