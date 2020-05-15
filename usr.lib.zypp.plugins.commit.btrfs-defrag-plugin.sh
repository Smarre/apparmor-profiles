# Profile for zypper’s btrfs defrag plugin.

#include <tunables/global>

/usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/cli>
  #include <abstractions/nameservice>
  #include <abstractions/user-tmp>

  # BTRFS needs to be able to defrag everything.
  owner /** r,

  /usr/bin/basename mrix,
  /usr/bin/mktemp mrix,
  /usr/bin/rm mrix,
  /usr/bin/rpm mrix,
  /usr/bin/stat mrix,
  /bin/bash ix,
  /usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh r,
  /usr/sbin/btrfs Px,

}
