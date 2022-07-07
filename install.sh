#!/bin/bash

echo "installing needed software"
  echo "be ready to put in your creds"

  sudo apt install dfu-util hackrf -y
  echo ==========================
  wait
  echo "plug in the hackrf while holding down the DFU button"
  echo "Its the second button from the right"
  sleep 5
  echo "did you hold the button down when you plugged it in? y/n"
  read a
  if [ "$a" = y ]
  then
    dfu-util --device 1fc9:000c --download hackrf_usb.dfu --reset
    wait
    hackrf_spiflash -w portapack-h1_h2-mayhem.bin
    wait
  elif [ "$a" = n ]
  then
    echo "If you didn't plug it in while holding down the DFU
    exit 1
    
