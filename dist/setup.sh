#!/bin/sh
set -e
echo "prepare data dir"
mkdir  -p /lzcapp/var/data
if [ ! -d /data ];then
    ln -s /lzcapp/var/data /data
fi
echo "prepare config dir"
mkdir -p /lzcapp/var/config
if [ ! -d /config ];then
    ln -s /lzcapp/var/config /config
fi

echo "check chfs.ini"
if [ ! -f /config/chfs.ini ];then
    cp -f /lzcapp/pkg/content/chfs.ini /config/chfs.ini
fi
/lzcapp/pkg/content/chfs --file=/config/chfs.ini