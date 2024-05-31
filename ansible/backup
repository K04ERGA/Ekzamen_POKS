#!/bin/bash
data=$(date +%d.%m.%Y-%H:%M:%S)
mkdir /var/backup/$data
cp -r /etc/frr /var/backup/$data
cp -r /etc/iptables /var/backup/$data
cp -r /etc/network/ /var/backup/$data
cp -r /etc/dhcp /var/backup/$data
cd /var/backup
tar czfv "./$data.tar.gz" ./$data
rm -r /var/backup/$data
