cd "frameworks/av"
git remote add aosp https://android.googlesource.com/platform/frameworks/av
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/
cd "frameworks/base"
git remote add aosp https://android.googlesource.com/platform/frameworks/base
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/
cd "build"
git remote add aosp https://android.googlesource.com/platform/build
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/
cd "frameworks/native"
git remote add aosp https://android.googlesource.com/platform/frameworks/native
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/
cd "bootable/recovery"
git remote add aosp https://android.googlesource.com/platform/bootable/recovery
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/
cd "external/sonivox"
git remote add aosp https://android.googlesource.com/platform/external/sonivox
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/
cd "external/tremolo"
git remote add aosp https://android.googlesource.com/platform/external/tremolo
git fetch aosp --unshallow
git fetch aosp
git checkout FETCH_HEAD
git checkout -B aosp_5.1.1
git push sec aosp_5.1.1
REPO .
cd ~/pac/