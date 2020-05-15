# Profile for login handler.

#include <tunables/global>

/bin/login flags=(complain) {
  #include <abstractions/authentication>
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/cli>
  #include <abstractions/extended>
  #include <abstractions/nameservice>
  #include <abstractions/wutmp>

  capability audit_write,
  capability chown,
  capability dac_override,
  capability dac_read_search,
  capability fowner,
  capability fsetid,
  capability net_admin,
  capability setgid,
  capability setuid,
  capability sys_module,
  capability sys_ptrace,
  capability sys_tty_config,

  signal send set=term peer=/usr/bin/fish,
  signal send set=hup peer=/usr/bin/fish,

  /bin/login mr,

  /usr/bin/acpi ix,
  /usr/bin/date ix,

  # Need to redirect own profile since console login otherise causes all commands to be under /bin/login...
  /usr/bin/fish Pix,
  /usr/bin/hostname ix,
  /usr/bin/sed ix,
  /usr/bin/svn Pix,
  /usr/bin/systemd-cat Px,
  /usr/bin/tty mrix,

  /dev/tty* rw,
  @{PROC}/sys/kernel/osrelease r,

  /etc/os-release r,

  /usr/lib/git/git Pix,

  # TODO: move to local file
  /usr/local/bin/auto_kinit.fish Px,

  owner /usr/bin/systemd-cat mr,

  # TODO: move to local file
  owner /usr/local/bin/auto_kinit.fish r,

  owner @{PROC}/@{uid}/environ r,
  owner @{PROC}/@{uid}/loginuid rw,
  owner @{PROC}/@{uid}/sched r,
  owner @{PROC}/@{uid}/uid_map r,
  owner @{PROC}/cmdline r,
  owner /sys/class/power_supply/ r,

  owner /etc/environment r,
  owner /etc/hushlogins r,
  owner /etc/locale.conf r,
  owner /etc/motd r,
  owner /etc/security/limits.d/ r,

  # TODO: this should be expanded.
  owner @{HOME}/.config/** r,

  owner /var/log/btmp wk,
}
