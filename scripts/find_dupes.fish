#!/usr/bin/fish

# Quick script to find out if there is profiles that should be symlinked.
#
# aa-logprof causes profiles to be overwritten, if they were a symlink originally.

if test $USER != "root"
    echo "This script needs to be run as root."
    exit 1
end

for i in (find /etc/apparmor.d -maxdepth 1 -type f)
    set found (find /home/smar/Projektit/random/apparmor-profiles -name (basename $i))
    if test -n "$found"
        set pathname (echo $found | cut -d"/" -f7-)
        #echo $pathname
        if cmp -s $i /home/smar/Projektit/random/apparmor-profiles/$pathname
            echo "Same files"
        else
            echo "$pathname differs"
        end
    end
end

