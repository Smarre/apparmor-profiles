#!/usr/bin/fish

# Copy existing profile over profile in this repository.

if test $USER != "root"
    echo "This script needs to be run as root."
    exit 1
end

# May be something like kde/profile.
set profile_name $argv[1]
set profile_basename (basename $profile_name)

set apparmor_dir "/etc/apparmor.d"
set existing_profile "$apparmor_dir/$profile_basename"

if not test -f "$existing_profile"
    echo "Profile $existing_profile does not exist."
    exit 1
end

# Chown the file to whoever owns the apparmor profiles.
set owner (stat -c "%U:%G" .)

# Backup existing profile to be safe.
set backupdir "Backup/Ours"
if not test -d "$backupdir"
    mkdir -p $backupdir
    chown $owner $backupdir
end

if test -f "$profile_name"
    mv $profile_name $backupdir
    chown $owner "$backupdir/$profile_name"
end

mv $existing_profile .
chown $owner $profile_name

set full_path (pwd)/$profile_name

ln -s $full_path $existing_profile
