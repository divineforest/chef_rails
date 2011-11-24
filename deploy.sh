#!/bin/bash

# Usage: ./deploy.sh [host]

host="${1:-app@192.168.0.102}"

# The host key might change when we instantiate a new VM, so
# we remove (-R) the old host key from known_hosts
# ssh-keygen -R "${host#*@}" 2> /dev/null
 
tar cj . | ssh -o 'StrictHostKeyChecking no' "$host" '
rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xj &&
chmod +x install.sh &&
sudo /home/app/chef/install.sh'
