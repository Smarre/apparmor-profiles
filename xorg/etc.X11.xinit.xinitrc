# Profile for xinitrc script.

#include <tunables/global>

/etc/X11/xinit/xinitrc flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/sddm>

  /bin/bash rix,
  /etc/X11/xinit/xinitrc r,
  /etc/X11/xinit/xinitrc.common r,
  /usr/bin/startkde Px,
  /usr/bin/twm Pix,

}
