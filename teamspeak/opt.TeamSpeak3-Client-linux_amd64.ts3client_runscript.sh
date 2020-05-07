# Script that handled loading bundled libraries for teamspeak.

#include <tunables/global>

profile teamspeak_runscript /opt/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>

  /bin/bash rix,

  # LD_LIBRARY_PATH needs to be inherited so that bundled libraries are loaded correctly.
  /opt/TeamSpeak3-Client-linux_amd64/ts3client_linux_amd64 rpx,

  /opt/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh r,

  /usr/bin/dirname mrix,
  /usr/bin/grep mrix,
  /usr/bin/openssl Cx,
  /usr/bin/readlink mrix,

  profile /usr/bin/openssl {
    #include <abstractions/base>
    #include <abstractions/consoles>
    #include <abstractions/openssl>

    /usr/bin/openssl mr,
  }
}
