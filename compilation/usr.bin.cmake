# Profile for cmake.

#include <tunables/global>

/usr/bin/cmake flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/openssl>

  signal receive set=kill peer=/usr/bin/kdevelop,

  / r,

  # TODO: why?
  /** r,

  /usr/bin/bison Px,
  /usr/bin/cmake mr,
  /usr/bin/msgmerge Px,
  /usr/bin/qmake-qt5 Px,

  /usr/lib/git/git Px,

  /usr/share/cmake/**/ r,
  /usr/share/cmake/Help/** r,

  # TODO: why?
  owner /** rw,

  owner @{HOME}/.cache/kdevelop/kdevelopcmake.* w,
}