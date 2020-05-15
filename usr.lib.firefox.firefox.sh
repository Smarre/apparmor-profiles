# Profile for Firefox launcher script.

#include <tunables/global>

profile firefox-launcher /usr/lib{,64}/firefox/firefox.sh {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/sddm>

  deny capability sys_ptrace,

  # This script doesn’t need to read home dirs.
  deny @{HOME}/ r,

  /{usr/,}bin/basename rix,
  /{usr/,}bin/bash rix,
  /usr/bin/expr rix,
  /{usr/,}bin/grep rix,
  /etc/magic r,
  /usr/bin/file rix,
  /usr/lib{,64}/firefox/firefox px,
  /usr/share/misc/magic.mgc r,

}
