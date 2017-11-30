#!/bin/bash

free -h
dd if=/dev/zero of=/var/swap.img bs=1024k count=4000
mkswap /var/swap.img
swapon /var/swap.img
free -h
