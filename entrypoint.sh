#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
mkdir /.config
mkdir /.config/rclone/
wget "$CONFIG_IN_URL" -O /.rclone.conf
rclone listremotes
rclone serve webdav $CLOUDNAME: --addr :$PORT --user asdf --pass asdf --vfs-read-chunk-size 128M
