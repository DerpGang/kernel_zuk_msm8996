#!/bin/bash
kernel_name="StatiX"
device_name="z2_plus"
zip_name="$kernel_name-Q-$device_name-$(date +"%m-%d").zip"
export anykernel="/home/prometheusXderpgang/AnyKernel3"
delete_zip(){
  cd $anykernel
  find . -name "*.zip" -type f
  find . -name "*.zip" -type f -delete
}
build_package(){
  cp -rf /home/prometheus*/ooo/out/arch/arm64/boot/Image.gz-dtb $anykernel/
  zip -r9 UPDATE-AnyKernel3.zip * -x README UPDATE-AnyKernel3.zip
}
make_name(){
  mv UPDATE-AnyKernel3.zip $zip_name
  mv $zip_name /home/prometheus*/kernel_zips/
}
delete_zip
build_package
make_name

