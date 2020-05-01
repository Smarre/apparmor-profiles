# Last Modified: Sun Apr 26 10:35:32 2020
#include <tunables/global>

/usr/lib64/firefox/firefox.sh flags=(complain) {
  #include <abstractions/audio>
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/dbus-session-strict>
  #include <abstractions/gnome>
  #include <abstractions/nameservice>
  #include <abstractions/ubuntu-konsole>

  capability sys_admin,

  /**/ r,
  /bin/bash ix,
  /bin/bash mr,
  /etc/magic r,
  /etc/mime.types r,
  /proc/*/net/arp r,
  /proc/*/net/route r,
  /proc/cpuinfo r,
  /proc/sys/crypto/fips_enabled r,
  /sys/devices/system/cpu/cpu*/cache/index*/size r,
  /sys/devices/system/cpu/cpufreq/policy*/cpuinfo_max_freq r,
  /sys/devices/system/cpu/present r,
  /usr/bin/basename mrix,
  /usr/bin/expr mrix,
  /usr/bin/file mrix,
  /usr/bin/grep mrix,
  /usr/lib64/firefox/firefox Px,
  /usr/lib64/firefox/firefox mr,
  /usr/lib64/firefox/firefox.sh r,
  /usr/lib64/libproxy-*/modules/network_networkmanager.so mr,
  /usr/share/misc/magic.mgc r,
  owner /** r,
  owner /dev/shm/org.chromium.* rw,
  owner /dev/shm/org.mozilla.ipc.* rw,
  owner /home/*/.ICEauthority r,
  owner /home/*/.Xauthority r,
  owner /home/*/.cache/fontconfig/* r,
  owner /home/*/.cache/gtk-3.0/compose/*.cache r,
  owner /home/*/.cache/mozilla/firefox/** rwk,
  owner /home/*/.config/gtk-3.0/settings.ini r,
  owner /home/*/.config/ibus/bus/* r,
  owner /home/*/.config/mimeapps.list r,
  owner /home/*/.fonts.conf r,
  owner /home/*/.local/share/applications/mimeinfo.cache r,
  owner /home/*/.local/share/mime/mime.cache r,
  owner /home/*/.local/share/sddm/xorg-session.log w,
  owner /home/*/.mozilla/** rwk,
  owner /proc/*/maps r,
  owner /proc/*/mountinfo r,
  owner /proc/*/stat r,
  owner /proc/*/statm r,
  owner /proc/*/status r,
  owner /proc/*/task/*/stat r,

}
