
TOP=${PWD}
. build/envsetup.sh

#############################################################
# PATCHES                                                   #
#############################################################


#############################################################
# CHERRYPICKS                                               #
#############################################################

# Example: repopick [CHANGE_NUMBER]

# frameworks/base
repopick 226343 229230 229612

# frameworks/native
repopick 224530 225542 225543 225546

# android_hardware_interfaces
repopick 225506 225507

# android_hardware_qcom_audio
repopick 223450

# android_hardware_qcom_display
repopick -t 8916-display-p -e 223444

# android_hardware_qcom_wlan
#repopick 226638 226643

# Sepolicy
repopick 230613
repopick -t pie-qcom-legacy-sepolicy
repopick -t pie-qcom-sepolicy
repopick 230229-230233 230237 234832 237211 235455
repopick 235258
