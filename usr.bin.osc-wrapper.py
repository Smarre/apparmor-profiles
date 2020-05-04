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

  /etc/os-release r,
  /etc/rpm/ r,
  /etc/rpm/* r,
  # Read by sudo, which is used internally by this system.
  /etc/sudoers r,
  @{HOME}/.osc_build/**/ r,

  /bin/bash mrix,

  /usr/bin/ r,
  /usr/bin/osc-wrapper.py r,
  /usr/bin/diff mrix,
  /usr/bin/diff3 mrix,
  /usr/bin/find mrix,
  /usr/bin/perl ix,
  /usr/bin/python[0-9].[0-9] rix,
  /usr/bin/sudo ix,
  /usr/bin/uname mrix,
  /usr/bin/vim-nox11 Cx,
  /usr/lib/build/build Px,
  /usr/lib/build/queryconfig mrix,
  /usr/lib/build/vc Px,
  /usr/lib/obs/service/recompress Px,
  /usr/lib/obs/service/set_version Px,
  /usr/lib/obs/service/tar_scm Px,

  # OBS project files can really reside anywhere, so let’s just allow reading and writing to anywhere user owns files.
  owner /** rw,

  /var/lib/osc-plugins/ r,

  /proc/[0-9]*/fd/ r,

  owner @{HOME}/**/.osc/_apiurl r,
  owner @{HOME}/.config/osc/oscrc rw,
  owner @{HOME}/.local/lib/python*/site-packages/ r,
  owner @{HOME}/.local/lib/python*/site-packages/** r,
  #owner @{HOME}/.local/lib/python*/site-packages/*/ r,
  owner @{HOME}/.osc_cookiejar rw,
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

    # Same as with main profile’s system-wide read-write.
    owner /**/ r,

    owner @{HOME}/.viminfo{,.tmp} rw,
    /dev/pts/* rw,

  }
}
