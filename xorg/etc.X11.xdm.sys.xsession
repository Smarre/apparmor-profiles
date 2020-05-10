# Last Modified: Sun Apr 26 10:35:31 2020
#include <tunables/global>

/etc/X11/xdm/sys.xsession flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/sddm>

  /bin/bash rix,
  /etc/X11/xdm/scripts/ r,
  /etc/X11/xdm/scripts/* r,
  /etc/X11/xdm/sys.xsession r,
  /usr/bin/uname ix,

  # TODO: probably no sense having unconfined here.
  # Start with audit, to see what actually gets launched.
  /usr/bin/* PUx,
}