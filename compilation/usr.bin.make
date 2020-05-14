# Profile for make.

#include <tunables/global>

/usr/bin/make flags=(complain) {
  #include <abstractions/base>

  /usr/bin/cmake Px,

  /usr/bin/make mr,

  # TODO: why?
  owner /** r,
  owner /**/ r,

}
