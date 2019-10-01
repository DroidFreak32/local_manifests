
Lineage 17.0 for Surnia
=======================
<!--
Current Status
--------------

What's working?
 - It boots!
 - RIL
 - Mobile data
 - Wifi
 - Bluetooth
 - GPS
 - Camera (apart from HDR)
 - Camcorder
 - VoLTE (credits to @nicorg2515)

What's not working
 - Camera HDR - doesn't work in Camera2 (same as in P) but Snap will probably work when it gets reinstated.
 - SELinux is Permissive


Download
--------

My current builds are available [here](https://chil360.github.io/).
-->

Build Instructions
------------------
Create a build directory

	mkdir lineage
	cd lineage

Initialize your local repository using the LineageOS trees, use a command like this:

    repo init -u git://github.com/LineageOS/android.git -b lineage-17.0

Now create a local_manifests directory

    mkdir .repo/local_manifests

Copy my local manifest 'surnia.xml' to the 'local_manifests' directory.

Then to sync up:

    repo sync -c --force-sync

OR, for those with limited bandwidth/storage:

    repo sync -c --no-clone-bundle --no-tags --force-sync --optimized-fetch --prune

Apply any required patches:

    Copy patch.sh and the .patch files from this repo to the root of your build folder. Then run the patch.sh script to apply.	


Now start the build...

```bash
# Go to the root of the source tree...
$
# ...and run to prepare our devices list
$ . build/envsetup.sh
# ... now run
$ brunch surnia
```

Please see the [LineageOS Wiki](https://wiki.lineageos.org/) for further information.
