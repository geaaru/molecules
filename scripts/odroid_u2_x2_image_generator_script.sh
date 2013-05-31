#!/bin/sh

# Path to molecules.git dir
SABAYON_MOLECULE_HOME="${SABAYON_MOLECULE_HOME:-/sabayon}"
export SABAYON_MOLECULE_HOME

# rootfs and bootfs tarball is generated by beaglebone image
export FIRST_PARTITION_OFFSET="5120000"  # 5Mb
export SD_FUSE="${SABAYON_MOLECULE_HOME}/boot/arm/odroid-u2-x2/sd_fuse/sd_fusing.sh"
exec "${SABAYON_MOLECULE_HOME}"/scripts/mkloopcard.sh "${SABAYON_MOLECULE_HOME}"/scripts/mkloopcard_odroid_u2_x2_chroot_hook.sh "${@}"