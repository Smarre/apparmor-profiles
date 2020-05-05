
#include <tunables/global>

profile /home/smar/.local/share/Steam/ubuntu12_32/steam-runtime/setup.sh {
  #include <abstractions/X>
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/nameservice>
  #include <abstractions/vulkan>

  /bin/bash ix,
  /bin/bash r,
  /etc/magic r,
  @{HOME}/.local/share/Steam/ubuntu12_32/steam-runtime/setup.sh r,
  /lib/ r,
  /lib64/ r,
  /proc/cpuinfo r,
  /proc/filesystems r,
  /sbin/ldconfig mrix,
  /sys/devices/** r,
  /tmp/source_engine_2849099857.lock wk,

  /usr/bin/basename mrix,
  /usr/bin/cut mrix,
  /usr/bin/file mrix,
  /usr/bin/find mrix,
  /usr/bin/getopt mrix,
  /usr/bin/grep mrix,
  /usr/bin/head mrix,
  /usr/bin/ln mrix,
  /usr/bin/mkdir mrix,
  /usr/bin/readlink mrix,
  /usr/bin/realpath mrix,
  /usr/bin/rm mrix,
  /usr/bin/tail mrix,
  /usr/bin/touch mrix,
  /usr/bin/tr mrix,
  /usr/bin/uname mrix,
  /usr/lib/ r,
  /usr/lib64/ r,
  /usr/local/lib/ r,
  /usr/local/lib64/ r,
  /usr/share/drirc.d/ r,
  /usr/share/drirc.d/* r,
  /usr/share/libdrm/* r,
  /usr/share/misc/magic r,
  /usr/share/misc/magic.mgc r,
  owner "/**/steamapps/common/*/**" mr,
  owner /**/steamapps/common/** r,
  owner @{HOME}/.Xauthority r,
  owner @{HOME}/.cache/mesa_shader_cache/** r,
  owner @{HOME}/.cache/mesa_shader_cache/index rw,
  owner @{HOME}/.local/share/Steam/ r,
  owner @{HOME}/.local/share/Steam/ubuntu12_32/steam-runtime/ r,
  owner @{HOME}/.local/share/Steam/ubuntu12_32/steam-runtime/** r,
  owner @{HOME}/.local/share/Steam/ubuntu12_32/steam-runtime/** w,
  owner @{HOME}/.local/share/Steam/ubuntu12_32/steam-runtime/*/ r,
  owner /proc/*/cmdline r,
}

