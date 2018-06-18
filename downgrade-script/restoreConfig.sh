#!/bin/sh
set -v
# local ##### upload this file on "restore config" Menu only !!!
##############################################################################
 #
 # @category "Cgminer 4.10.0 for Bitmain Antminer S9"
 # @package "S9 Firmware"
 # @author Miguel Padilla <miguel.padilla@zwilla.de>
 # @author MihaiS
 # @copyright (c) 2016 - Miguel Padilla
 #
 #
 # According to our dual licensing model, this program can be used either
 # under the terms of the GNU Affero General Public License, version 3,
 # or under a proprietary license.
 #
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 # GNU Affero General Public License for more details.
 #
##############################################################################
#
# vi restoreConfig-sh
# paste this code into
# press "esc" "w" "q"
#
# create the md5 sum at the folder where you compiled the source
#
#  cp cgminer bmminer
#  cp cgminer-api bmminer-api
#  md5sum bmminer-api > bmminer-api.md5
#  md5sum bmminer > bmminer.md5
#
#  review this script, test it on ssh terminal and then save it again with your changes and
#
#  md5sum restoreConfig.sh > restoreConfig.md5
#
#  cp restoreConfig.sh and restoreConfig.md5 to your build root
#
# create the tar
# tar -cf AntminerS9-Update-Bmminer.tar restoreConfig.md5 bmminer.md5 bmminer-api.md5 restoreConfig.sh bmminer-api bmminer
#
# now copy AntminerS9-Update-Bmminer.tar to your computer from where you have access to the frontend of your Antminer S9
#
#  * click on Menu System
#  * click on Menu Upgrade
#  * click on menu "Restore backup"
#  * choose the AntminerS9-Update-Bmminer.tar
#  * click on "upload Archive..."
#
# now the following process will start:
#
#   * uploading AntminerS9-Update-Bmminer.tar
#   * check for old version and delete them
#   * check the md5sum of the files
# 
mkdir -p /config/.old_config

rm -rf /config/.old_config/*
cd /config/

# delete upgrade miner version
mv /usr/bin/bmminer
cp /usr/bin/bmminer-backup /usr/bin/bmminer
cp /usr/bin/bmminer-api-backup /usr/bin/bmminer-api
/etc/init.d/bmminer.sh restart


cd - >> /dev/null
cp * /config/
sync

# NOTE!!! Not yet tested !!!
