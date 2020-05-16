export KBUILD_BUILD_USER=Kanishk

export KBUILD_BUILD_HOST=DerpGang™

make O=out ARCH=arm64 statix_defconfig
make -j$(nproc --all) O=out ARCH=arm64 CC=~/toolchain/clang11/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=~/toolchain/gcc64/bin/aarch64-linux-android-  CROSS_COMPILE_ARM32=~/toolchain/gcc32/bin/arm-linux-androideabi-

bash zip.sh
