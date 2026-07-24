#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archlinux-zenbook-a16"
iso_label="ARCH_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Autumn Ashton <misyl@froggi.es>"
iso_application="Arch Linux Ports - aarch64 Live/Rescue Disk for Asus Zenbook A16"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi.systemd-boot')
arch='aarch64'
dtb='glymur-asus-zenbook-a16-ux3607oa.dtb'
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-zlz4hc,12')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/zenbook-a16-repo-setup"]="0:0:755"
  ["/usr/local/bin/zenbook-a16-pacstrap"]="0:0:755"
)
