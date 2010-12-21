# Class: mysql::conf
#
# Setup the mysql instance config
#
# Parameters:
#
# Actions: 
#
# Requires:
#
# Sample Usage:
#
define mysql::conf() {

  file { "/etc/my.cnf-${instance}":
    source  => "puppet:///modules/mysql/my.cnf.${hostname}.${instance}",
  }
}
