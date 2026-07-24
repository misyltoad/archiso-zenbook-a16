#!/bin/bash

sudo rm -rf out || true
sudo rm -rf work || true
sudo ./archiso/mkarchiso -o ./out -w ./work -v configs/zenbook-a16
