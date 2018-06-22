#!/bin/sh
adb wait-for-device
adb root
sleep 1
adb shell 'ls -al /data/anr'
adb shell 'ls -al /data/system/dropbox/'
echo $Abc
