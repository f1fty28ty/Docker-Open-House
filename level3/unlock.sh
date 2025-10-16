#!/usr/bin/env bash
set -eu
# unlock.sh - single-file decryptor. Players run: ./unlock.sh

echo "Starting unlock process..."
echo "You need the flags from Level 1 and Level 2"
read -p "Enter flag1: " flag1
read -p "Enter flag2: " flag2

# Check if the correct flags were provided
if [ "$flag1" = "flag{level1_accessed}" ] && [ "$flag2" = "flag{got_to_level2}" ]; then
  echo "flag{ctf_complete_you_win}"
else
  echo "Incorrect flags or corruption. Try again."
  exit 1
fi