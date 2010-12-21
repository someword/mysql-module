# Class: mysql::v4
#
# Use the v4 default mysql software
#
# Parameters:
#
# Actions: Install the mysql 4 software
#
# Requires:
#
# Sample Usage:
#
define mysql::v4() {
  

  # Define the v4 variables
  $package  = "CHKmysql41"
  $version  = "4.1.22,REV=20100225"
  $filename = "s10-i86pc-mysql-4.1.22-20100225"
  $mysqldir = regsubst($version,'^(.*[0-9]),.*$','\1')

  mysql::package { $instance: }
}
