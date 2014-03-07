#!/usr/bin/env bash

# Changing to working directory
cd $(dirname "$0")
source ../config.sh

# Temp paths and files
export SRC_PKG="http://forja.cenatic.es/frs/download.php/file/1381/super_grub_disk_hybrid-1.98s1.iso"
export TRG_NME="sgd"
export TRG_PKG=$TRG_NME".iso"

# Download syslinux and deploy it
. ./common/download.sh
[ ! -d $TFTP_PATH/boot/$TRG_NME ] && {
	mkdir $TFTP_PATH/boot/$TRG_NME -p
}
cp $TMP/$TRG_PKG $TFTP_PATH/boot/$TRG_NME/

. ./common/clean.sh
