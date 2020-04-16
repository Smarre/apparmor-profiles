# Last Modified: Mon Apr 13 10:20:01 2020
#include <tunables/global>

/usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/bash>

  /bin/bash ix,
  /usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh r,

}
