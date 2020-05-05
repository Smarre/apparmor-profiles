# Last Modified: Wed Apr  8 15:49:38 2020
#include <tunables/global>

/home/smar/.local/share/Steam/ubuntu12_64/steamwebhelper.sh flags=(complain) {
  #include <abstractions/X>
  #include <abstractions/audio>
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/dbus-session-strict>
  #include <abstractions/fonts>
  #include <abstractions/freedesktop.org>
  #include <abstractions/nameservice>
  #include <abstractions/user-tmp>
  #include <abstractions/vulkan>

  ptrace trace peer=/home/smar/.local/share/Steam/ubuntu12_64/steamwebhelper.sh,

  /bin/bash ix,
  /bin/bash r,
  /dev/hidraw* rw,
  /proc/ r,
  /proc/*/stat r,
  /proc/sys/fs/inotify/max_user_watches r,
  /proc/vmstat r,
  /selinux/ r,
  /sys/bus/pci/devices/ r,
  /sys/devices/** r,
  /sys/devices/system/cpu/cpufreq/** r,
  /usr/bin/dirname mrix,
  /usr/bin/rm mrix,
  /usr/share/drirc.d/ r,
  /usr/share/drirc.d/* r,
  /usr/share/libdrm/* r,
  @{HOME}/.local/share/Steam/ubuntu12_64/steamwebhelper mrix,
  @{HOME}/.local/share/Steam/ubuntu12_64/steamwebhelper.sh r,
  owner /dev/shm/* rwk,
  owner /home/*/.cache/mesa_shader_cache/** k,
  owner /home/*/.local/share/Steam/clientui/fonts/clientui.uifont k,
  owner /proc/*/fd/ r,
  owner /proc/*/oom_score_adj w,
  owner /proc/*/status r,
  owner /proc/*/task/ r,
  owner /proc/*/task/** r,
  owner @{HOME}/.Xauthority r,
  owner @{HOME}/.cache/mesa_shader_cache/** r,
  owner @{HOME}/.cache/mesa_shader_cache/** w,
  owner @{HOME}/.cache/mesa_shader_cache/index rw,
  owner @{HOME}/.config/cef_user_data/Dictionaries/* rw,
  owner @{HOME}/.config/ibus/bus/* r,
  owner @{HOME}/.local/share/Steam/** m,
  owner @{HOME}/.local/share/Steam/** r,
  owner @{HOME}/.local/share/Steam/config/htmlcache/* r,
  owner @{HOME}/.local/share/Steam/config/htmlcache/* w,
  owner @{HOME}/.local/share/Steam/config/htmlcache/** k,
  owner @{HOME}/.local/share/Steam/config/htmlcache/** r,
  owner @{HOME}/.local/share/Steam/config/htmlcache/** w,
  owner @{HOME}/.local/share/Steam/config/htmlcache/**/ rw,
  owner @{HOME}/.local/share/Steam/config/htmlcache/*/ w,
  owner @{HOME}/.local/share/Steam/config/htmlcache/blob_storage/ w,
  owner @{HOME}/.local/share/Steam/config/widevine/linux-x64/manifest.json r,
  owner @{HOME}/.local/share/Steam/logs/cef_log.txt w,
  owner @{HOME}/.local/share/Steam/ubuntu12_32/** mr,
  owner @{HOME}/.local/share/Steam/ubuntu12_64/* mr,
  owner @{HOME}/.local/share/Steam/ubuntu12_64/locales/*.pak r,
  owner @{HOME}/.local/share/Steam/ubuntu12_64/steam-runtime-heavy/* mr,
  owner @{HOME}/.pki/nssdb/* rwk,
  owner @{HOME}/.pki/nssdb/pkcs11.txt rw,
  owner @{HOME}/.steam/steam.pipe r,

}