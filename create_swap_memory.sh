#!/bin/bash
# Credits: https://pplware.sapo.pt/linux/dica-linux-como-aumentar-a-memoria-swap-do-sistema/


# Creating a Swap file on Ubuntu:
sudo fallocate -l 20G /swap.img

# Adding Read and Write permissions to the Swap file:
sudo chmod 600 /swap.img

# Reverving the space on the disk (Creating the .img file on the disk)
sudo mkswap /swap.img

# Activating the Swap file on Ubuntu:
sudo swapon /swap.img

# Activating the Swap file on Ubuntu:
sudo swapon --show

# Setting up as a permanent file:
echo '/swap.img none swap sw 0 0' | sudo tee -a /etc/fstab