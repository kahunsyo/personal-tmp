#!/bin/sh

set -ex

ROOT_PTMP_DIR="/ptmp"
ROOT_ARCHIVE_DIR="$ROOT_PTMP_DIR/.old"

cp -i refresh-ptmp uninstall_personal-tmp.sh /usr/local/bin/.
cp -i personal-tmp.service /etc/systemd/system/.
cp -i ptmp_root_archive.conf /etc/tmpfiles.d/.

systemctl daemon-reload
systemctl enable personal-tmp.service
systemctl start personal-tmp.service
systemd-tmpfiles --create --prefix="$ROOT_ARCHIVE_DIR"

echo "Installed"
