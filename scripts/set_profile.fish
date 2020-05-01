#!/usr/bin/fish

# Do a symlink.

if test $USER != "root"
    echo "This script needs to be run as root."
    exit 1
end

# May be something like kde/profile.
set profile_name $argv[1]
set profile_basename (basename $profile_name)

set apparmor_dir "/etc/apparmor.d"
set existing_profile "$apparmor_dir/$profile_basename"

if not test -f "$profile_name"
    echo "Profile $profile_name does not exist."
    exit 1
end

# Chown the file to whoever owns the apparmor profiles.
set owner (stat -c "%U:%G" .)

# Backup existing profile to be safe.
set backupdir "Backup/Originals"
if not test -d "$backupdir"
    mkdir -p $backupdir
    chown $owner $backupdir
end

if test -f "$existing_profile"
    mv $existing_profile $backupdir
    chown $owner "$backupdir/$profile_name"
end

set full_path (pwd)/$profile_name

ln -s $existing_profile $full_path