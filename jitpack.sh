#!/bin/bash
set -e

wget https://dl.google.com/android/repository/android-ndk-r25c-linux.zip
unzip android-ndk-r25c-linux.zip
mv android-ndk-r25c "$HOME"/android-ndk

export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK_ROOT=$HOME/android-ndk
export ANDROID_NDK_HOME=$HOME/android-ndk
export ANDROID_NDK=$HOME/android-ndk

cd ffmpeg-kit
chmod +x android.sh
./android.sh --enable-gnutls --disable-x86 --disable-x86-64 --disable-arm-v7a --api-level=21
