# Profile for friendly interactive shell.

#include <tunables/global>

# WARNING: This profile is meant to be a fallback, when no other profiles are suitable.
# Almost always fish should be inherited instead.

# attach_disconnected seems to be needed for some strangery. Probably broken profile elsewhere
/usr/bin/fish flags=(complain, attach_disconnected) {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>
  #include <abstractions/nameservice>
  #include <abstractions/python>
  #include <abstractions/user-tmp>

  capability chown,
  capability dac_override,
  capability dac_read_search,
  capability fowner,
  capability fsetid,
  capability net_admin,
  capability setfcap,
  capability setuid,
  capability sys_admin,
  capability sys_module,
  capability sys_ptrace,
  capability sys_rawio,
  capability syslog,

  signal send,

  ptrace read,

  / r,

  # I guess I must allow about everything to read-writable.
  /** rwk,

  # TODO: first audit, then convert to inherited.
  /bin/* PUx,
  /bin/ps mr,

  /bin/bash mrix,

  # TODO: first audit, then convert to inherited.
  /sbin/* PUx,
  /sbin/apparmor_parser mr,

  /usr/bin/* Pix,
  /usr/bin/acpi mrix,
  /usr/bin/ag ix,
  /usr/bin/date ix,
  /usr/bin/dirname mrix,
  /usr/bin/fish mr,
  /usr/bin/grep mrix,
  /usr/bin/hostname mrix,
  /usr/bin/journalctl Px,
  /usr/bin/openssl mrix,
  /usr/bin/perl mrwkix,
  /usr/bin/python3.6 mr,
  /usr/bin/readlink mrix,
  /usr/bin/rm ix,
  /usr/bin/sed ix,
  /usr/bin/sudo Cx,
  /usr/bin/svn Px,
  /usr/bin/svn mr,
  /usr/bin/systemctl Px,
  /usr/bin/tty ix,
  /usr/bin/uname mrix,
  /usr/bin/vim-nox11 mrix,
  /usr/bin/which mrix,

  # TODO: first audit, then convert to inherited.
  /usr/sbin/* PUx,
  /usr/sbin/ausearch mr,
  /usr/sbin/nvme mr,

  /etc/X11/xdm/sys.xsession Px,
  /etc/fish/* r,
  /etc/fish/*/ r,
  /etc/fish/conf.d/* r,
  /lib/ld-2.26.so mrix,
  /lib64/ld-2.26.so mrix,

  # TODO: move to local
  /opt/TeamSpeak3-Client-linux_amd64/ts3client_linux_amd64 px,
  /opt/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh mrix,
  /opt/TeamSpeak3-Client-linux_amd64/update Px,
  /opt/TeamSpeak3-Client-linux_amd64/update mr,


  /usr/lib{,64}/mesa-demos/* Pix,
  /usr/lib/dracut/skipcpio mrix,
  /usr/lib/git/git Px,
  /usr/lib/mit/bin/kinit Px,
  /usr/lib/rpm/rpmdumpheader mrix,
  /usr/lib/rpm/rpmsort mrix,
  /usr/lib/rpm/rpmsort r,
  /usr/lib/zypp/plugins/appdata/InstallAppdata Px,
  /usr/lib/zypp/plugins/commit/btrfs-defrag-plugin.sh Px,
  /usr/lib/zypp/plugins/commit/snapper.py Px,
  /usr/lib64/** mr,
  /usr/lib64/gcc/** ix,
  /usr/lib64/jvm/*/bin/* ix,

  /usr/share/fish/** r,
  /var/adm/update-scripts/posttrans** ix,
  /var/cache/man/** rk,

  owner /** rl,
  owner @{HOME}/.config/fish/* rk,
  owner @{HOME}/.config/fish/** r,
  owner @{HOME}/.local/share/fish/* rwk,

  owner /run/user/[0-9]*/fishd.*.notifier rw,

  owner /usr/share/fish/* r,
  owner /{usr/,}lib{,32,64}/** mr,

  # NOTE: This profile is child-profile, since I feel I want to have some extra
  # detection for things going through sudo. Since those things shouldn’t have rights
  # in main fish fallback profile.
  profile /usr/bin/sudo flags=(complain) {
    #include <abstractions/authentication>
    #include <abstractions/base>
    #include <abstractions/consoles>
    #include <abstractions/nameservice>
    #include <abstractions/wutmp>

    capability audit_write,
    capability setgid,
    capability setuid,
    capability sys_resource,

    /usr/bin/uname ix,
    /usr/bin/* PUx,
    /usr/bin/sudo mr,

    /etc/sudoers r,

    /usr/lib/build/build Px,
    /usr/share/*/bin/* Pix,

    owner @{PROC}/@{uid}/fd/ r,
    owner @{PROC}/@{uid}/stat r,

    owner /etc/environment r,
    owner /etc/security/limits.d/ r,

    owner /usr/lib/sudo/sudoers.so mr,

  }
}
