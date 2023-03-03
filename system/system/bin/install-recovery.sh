#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:13829024:9c44da73a55d2a7655f09b1bb2e9a74c29d6275d; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:8590240:2ed3a73094689eb2fd1b5479a0e893f06459a916 EMMC:/dev/block/platform/bootdevice/by-name/recovery 9c44da73a55d2a7655f09b1bb2e9a74c29d6275d 13829024 2ed3a73094689eb2fd1b5479a0e893f06459a916:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
