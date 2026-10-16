#!/usr/bin/env bash

FILE=$(zenity --file-selection \
  --save \
  --confirm-overwrite \
  --filename="$HOME/university/w26/screscreenshotenshot-$(date +%Y-%m-%d_%H-%M-%S).png")

[ -z "$FILE" ] && exit 0

grim -g "$(slurp)" "$FILE"
