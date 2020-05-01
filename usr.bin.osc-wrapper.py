# Last Modified: Sun Apr 26 08:37:28 2020
#include <tunables/global>

/usr/bin/osc-wrapper.py flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/nameservice>
  #include <abstractions/perl>
  #include <abstractions/python>
  #include <abstractions/wutmp>

  capability audit_write,
  capability setgid,
  capability setuid,
  capability sys_resource,

  signal send set=kill peer=/usr/lib/obs/service/tar_scm,

  /** r,
  /bin/bash mrix,
  /etc/rpm/* r,
  /home/*/.osc_build/**/ r,
  /usr/bin/diff mrix,
  /usr/bin/diff3 mrix,
  /usr/bin/find mrix,
  /usr/bin/perl ix,
  /usr/bin/python3.6 ix,
  /usr/bin/sudo ix,
  /usr/bin/uname mrix,
  /usr/bin/vim-nox11 Cx,
  /usr/lib/build/build Px,
  /usr/lib/build/queryconfig mrix,
  /usr/lib/build/vc Px,
  /usr/lib/obs/service/recompress Px,
  /usr/lib/obs/service/set_version Px,
  /usr/lib/obs/service/tar_scm Px,
  owner /** w,
  owner /home/*/.config/osc/oscrc rw,
  owner /home/*/.local/lib/python*/site-packages/ r,
  owner /home/*/.local/lib/python*/site-packages/* r,
  owner /home/*/.local/lib/python*/site-packages/** r,
  owner /home/*/.local/lib/python*/site-packages/*/ r,
  owner /home/*/.osc_cookiejar rw,
  owner /lib64/security/* mr,
  owner /proc/*/mounts r,
  owner /usr/lib/osc-plugins/__pycache__/* rw,
  owner /usr/lib/sudo/sudoers.so mr,


  profile /usr/bin/vim-nox11 flags=(complain) {
    #include <abstractions/base>
    #include <abstractions/bash>
    #include <abstractions/nameservice>
    #include <abstractions/user-tmp>

    /etc/vimrc r,
    /usr/bin/vim-nox11 mr,
    /usr/share/vim/** r,
    owner /**/ r,
    owner /home/*/.viminfo r,
    owner /home/*/.viminfo w,
    owner /home/*/.viminfo.tmp rw,

  }
}
