#!/bin/bash

echo "installing needed software"
echo "be ready to put in your creds"

sudo apt install dfu-util hackrf -y
wait
echo "plug in the hackrf while holding down the DFU button"
