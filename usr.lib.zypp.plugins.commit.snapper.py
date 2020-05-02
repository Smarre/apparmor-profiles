# Last Modified: Mon Apr 27 06:05:32 2020
#include <tunables/global>

/usr/lib/zypp/plugins/commit/snapper.py flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/consoles>
  #include <abstractions/python>

  ptrace read peer=/usr/bin/fish,
  ptrace read peer=unconfined,

  /usr/bin/python[0-9].[0-9] ix,
  /usr/lib/zypp/plugins/commit/snapper.py r,
  owner /etc/snapper/zypp-plugin.conf r,
  owner /usr/bin/python* r,

}
