#!/bin/sh

cp -f /usr/local/share/rke2/rke2-cis-sysctl.conf /etc/sysctl.d/60-rke2-cis.conf
systemctl restart systemd-sysctl
sudo useradd -r -c "etcd user" -s /sbin/nologin -M etcd -U
