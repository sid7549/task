#!/bin/bash
echo "Enter user:"
read user
ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q -N "" 
echo "Enter the name of the user:"
read user
ssh-copy-id -i /tmp/sshkey $user@192.168.1.3
ssh-copy-id -i /tmp/sshkey $user@192.168.1.4
ssh-copy-id -i /tmp/sshkey $user@192.168.1.5
ssh-copy-id -i /tmp/sshkey $user@192.168.1.6
ssh-copy-id -i /tmp/sshkey $user@192.168.1.7
