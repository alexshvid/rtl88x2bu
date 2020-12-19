#!/usr/bin/env bash

MODULE_NAME=88x2bu

KVER=`uname -r`
MODDESTDIR=/lib/modules/$KVER/kernel/drivers/net/wireless/

sudo install -p -m 644 $MODULE_NAME.ko $MODDESTDIR
sudo /sbin/depmod -a $KVER
