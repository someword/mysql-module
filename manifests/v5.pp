# Class: mysql::v5
#
# Use the v5 default mysql software
#
# Parameters:
#
# Actions: Install the mysql 5 software
#
# Requires:
#
# Sample Usage:
#
define mysql::v5() {

  include mysql

  # Define the v5 specific variables
  $package  = "CHKmysql51"
  $version  = "5.1.46,REV=20100903"
  $filename = "s10-i86pc-mysql-5.1.46-20100903"
  $mysqldir = regsubst($version,'^(.*[0-9]),.*$','\1')

  mysql::package { $instance: }
}
