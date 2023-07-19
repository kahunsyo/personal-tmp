#!/bin/sh

set -ex

systemctl disable personal-tmp.service

rm /usr/local/bin/refresh-ptmp
rm /etc/systemd/system/personal-tmp.service
rm /usr/local/bin/uninstall_personal-tmp.sh
rm /etc/tmpfiles.d/ptmp_root_archive.conf

set +x

echo "Info: Exsiting personal tmp direcotry was not removed."
echo "Info: You can remove it manually."
echo "Uninstalled"
