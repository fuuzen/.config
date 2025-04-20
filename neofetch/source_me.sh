#!/bin/bash

# usage: add the following line to the end of .bashrc or .zshrc:
# source "$HOME/.config/neofetch/source_me.sh"

source "${HOME}/.config/neofetch/image.sh"

export NEOFETCH_IMG_PATH=${HOME}/.config/neofetch/${IMG_NAME}

if [ ! -f "${NEOFETCH_IMG_PATH}" ] || [[ "${IMG_NAME}" == *"random"* ]]; then
  if curl -s -o "${NEOFETCH_IMG_PATH}" "${IMG_URL}"; then
    echo "Successfully downloaded: ${NEOFETCH_IMG_PATH}"
  else
    echo "Failed to download ${IMG_URL}"
  fi
  neofetch --clean  # Clear the cache to show new image
fi

neofetch --source="${NEOFETCH_IMG_PATH}"