#!/system/bin/sh
if [ -f "/cache/lost+found/.cp_app_to_data.lock" ];
then
    log -t recovery "already copy app from preload to app"
else
    busybox cp /system/preload/* /data/app/
    busybox chmod 666 /data/app/*
    busybox touch "/cache/lost+found/.cp_app_to_data.lock"
fi

