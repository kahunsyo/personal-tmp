# personal-tmp
Automatically archive and delete files.

This creates a `/ptmp` directory for temporary files. Files stored in `/ptmp` are archived in `/ptmp/.old/YYYY-MM-DD-XXX` before each shutdown. Additionally, files in `/ptmp/.old/YYYY-MM-DD-XXX` are deleted after 7 days, using the access time (atime) for calculation. 

## Install
```
sudo ./install.sh
```

## Archive manually
```
refresh-ptmp #if /ptmp contains other user's files, you shuold use sudo
```

## Uninstall
```
sudo uninstall_personal-tmp.sh
```

