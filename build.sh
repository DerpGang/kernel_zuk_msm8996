make O=out ARCH=arm64 statix_defconfig
make -j$(nproc --all) O=out ARCH=arm64 CC=~/clang10/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=~/gcc10/bin/aarch64-linux-android-  CROSS_COMPILE_ARM32=~/arm32/bin/arm-linux-androideabi-

bash zip.sh
