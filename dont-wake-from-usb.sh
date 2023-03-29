#!/bin/bash
# find USB devices that are configured for wake-on-usb and disable them
for res in $(grep enabled /sys/bus/usb/devices/*/power/wakeup); do
  IFS=':' read -ra file <<< "$res"
  echo "disabled" > "${file[0]}"
done
