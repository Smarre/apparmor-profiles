# Last Modified: Mon Apr 13 10:19:56 2020
#include <tunables/global>

/usr/lib/zypp/plugins/commit/snapper.py flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/python>

  /usr/bin/python3.6 ix,
  /usr/lib/zypp/plugins/commit/snapper.py r,

}
