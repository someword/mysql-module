# Class: mysql::zfs
#
# Setup the zfs filesystems for the mysql instance
#
# Parameters:
#
# Actions: 
#
# Requires:
#
# Sample Usage:
#
define mysql::zfs(before = Mysql::Directories["$instance"]) {

  # Create the per instance zfs filesystems
  zfs { "${zpool}/${instance}_log":
    mountpoint   => "/site/${instance}/log",
    primarycache => "metadata",
  }

  zfs { "${zpool}/${instance}_tmp":
    mountpoint   => "/site/${instance}/tmp",
    primarycache => "metadata",
  }

  zfs { "${zpool}/${instance}_data":
    mountpoint   => "/site/${instance}/data",
    primarycache => "metadata",
    recordsize   => "16K",
  }
}
