# Class: mysql::instance
#
# The entry point into setting up a mysql instance
#
# Parameters:
#
# Actions: 
#
# Requires:
#
# Sample Usage:
#
# mysql::instance { "db01":
#   major       => "v5",
#   zpool       => "localdisks",
# }
#
# mysql::instance { "db01":
# }
#
define mysql::instance ($major, $zpool = undef) {

  # Define the instance variable 
  $instance = $name

  # We need the mysql defaults
  include mysql

  # Include the requested common class
  if $major == "v4" {

    mysql::v4 { "$instance": }

  } elsif $major == "v5" {

    mysql::v5 { "$instance": }

  } else {

    notify{"requested version: $version is not supported": }

  } 

  # If zpool is defined then we need to require the zfs class
  if $zpool {
    mysql::zfs { "$instance": }
  }

  # Setup the directory structure with the correct perms
  mysql::directories { "$instance": }

  # Install the config file
  mysql::conf { "$instance": }
}
