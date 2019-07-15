#!/bin/sh

TOP=${PWD}
echo "TOP: $TOP"

. build/envsetup.sh

# safer repopick:
# checks for the return value of repopick and waits for
# user input to continue.

safer-repopick() {
    repopick $*
    if [ "$?" -gt "0" ] ; then
      read -p "$0 $*: ENTER to continue"
    fi
}
#############################################################
# PATCHES                                                   #
#############################################################

##
##  Lag Fixes
##
safer-repopick -t unclipped_layer
cd external/skia
git am -3 $TOP/0002-fGpu-is-null-when-GrGpuResource-release.patch
cd $TOP

#############################################################
# CHERRYPICKS                                               #
#############################################################

# Example: repopick [CHANGE_NUMBER]
# Sounds: Squashed cleanup of sound files
safer-repopick 236765 -P frameworks/base -f

# SDCLANG-6: fix declaration
safer-repopick 219760 -P system/nfc/

# pie-msim-ringtones
safer-repopick -t pie-msim-ringtones -e 233633,233634,237209
safer-repopick 233633 -P frameworks/base/
safer-repopick 233634 -P packages/apps/Settings/
safer-repopick 237209 -P vendor/lineage/

# RIP libhealthd.lineage
safer-repopick 242432 -P vendor/lineage/

# Make custom off-mode charging screen great again
safer-repopick 242433 -P vendor/lineage/

# p-display-shrink
safer-repopick 231827 -P frameworks/base/
safer-repopick 231847 -P frameworks/base/
safer-repopick 231848 -P frameworks/base/
safer-repopick 231851 -P frameworks/base/
safer-repopick 231852 -P frameworks/base/
safer-repopick 237500 -P packages/apps/Settings
safer-repopick 231828

# swipe_screenshot
safer-repopick 247884 -P packages/apps/Settings
safer-repopick 247885 -P lineage-sdk/
safer-repopick 247886 -P frameworks/base/

safer-repopick -t pie-onehandmode-tile
