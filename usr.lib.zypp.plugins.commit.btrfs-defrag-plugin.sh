# Last Modified: Sun Apr 19 11:45:31 2020
#include <tunables/global>

/usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/cli>
  #include <abstractions/nameservice>
  #include <abstractions/user-tmp>

  /usr/bin/basename mrix,
  /usr/bin/mktemp mrix,
  /usr/bin/rm mrix,
  /usr/bin/rpm mrix,
  /usr/bin/stat mrix,
  /bin/bash ix,
  /usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh r,
  /usr/sbin/btrfs Px,
  owner /** r,

}
