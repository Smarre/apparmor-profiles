# Last Modified: Sun Apr 26 17:31:36 2020
#include <tunables/global>

/opt/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/consoles>

  /bin/bash ix,
  /bin/bash r,
  /opt/TeamSpeak3-Client-linux_amd64/ts3client_linux_amd64 px,
  /opt/TeamSpeak3-Client-linux_amd64/ts3client_linux_amd64 r,
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
