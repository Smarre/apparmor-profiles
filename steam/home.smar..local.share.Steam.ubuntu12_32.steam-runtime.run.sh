
#include <tunables/global>

profile /home/smar/.local/share/Steam/ubuntu12_32/steam-runtime/run.sh {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/user-tmp>

  /bin/bash ix,
  /bin/bash r,
  @{HOME}/.local/share/Steam/ubuntu12_32/steam-runtime/run.sh r,
  /lib/ r,
  /lib64/ r,
  /sbin/ldconfig mrix,
  /usr/bin/cut mrix,
  /usr/lib/ r,
  /usr/lib64/ r,
  /usr/local/lib/ r,
  /usr/local/lib64/ r,

}

