#!/bin/bash
wget http://update.aegis.aliyun.com/download/uninstall.sh && chmod +x uninstall.sh &&./uninstall.sh
wget http://update.aegis.aliyun.com/download/quartz_uninstall.sh && chmod +x quartz_uninstall.sh && ./quartz_uninstall.sh
rm -rf /usr/local/aegis
rm -rf /usr/sbin/aliyun-service
rm -rf /usr/sbin/aliyun-service.backup
rm -rf /usr/sbin/aliyun_installer
/usr/local/cloudmonitor/CmsGoAgent.linux-amd64 stop
/usr/local/cloudmonitor/CmsGoAgent.linux-amd64 uninstall
rm -rf /usr/local/cloudmonitor
systemctl stop aliyun.service
systemctl stop cloud-config.service
systemctl stop cloud-config.target
systemctl stop cloud-final.service
systemctl stop cloud-init-local.service
systemctl stop cloud-init.service
systemctl stop colord.service
systemctl disable cloud-config.service
systemctl disable cloud-config.target
systemctl disable cloud-final.service
systemctl disable cloud-init-local.service
systemctl disable cloud-init.service
systemctl disable colord.service
systemctl disable aliyun.service
