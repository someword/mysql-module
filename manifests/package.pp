# Class: mysql::package
#
#  Install the mysql software and include the service class
#
# Parameters:
#
# Actions: 
#
# Requires:
#
# Sample Usage:
#
define mysql::package() {

  # Setup the service for this instance
  mysql::service { "$instance": }

  if defined(Packages::Install["$package"]) {
    
    notify{"package already defined $package": }

  } else {

    packages::install { "$package":
     version  => "$version",
     filename => "$filename",
    }
  }
}
