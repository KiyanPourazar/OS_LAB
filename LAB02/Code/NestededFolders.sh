#!/bin/bash

DIR_PATH="Address"

if mkdir -p "$DIR_PATH"; then
  echo "Done!"
else
  echo "ERROR!"
fi
