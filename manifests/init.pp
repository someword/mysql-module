# Class: mysql
#
# Manage the mysql client and servers
#
# Parameters:
#
# Actions: The default action is to create the mysql user and group
#
# Requires:
#
# Sample Usage:
#
class mysql {
  
  # The mysql group and user
  group { 'mysql':
    gid    => '501',
    ensure => 'present',
  }

  user { 'mysql':
    uid      => '501',
    gid      => '501',
    password => 'NP',
    home     => '/',
    comment  => 'MySQL Reserved UID',
    shell    => '/bin/false',
    ensure   => 'present',
  }

  # Mysql profile and method
  file { 
    "/etc/profile.d/mysql-profile.sh":
      mode    => "755",
      source  => "puppet:///modules/mysql/mysql-profile.sh";
    "/lib/svc/method/svc-mysql":
      mode   => "755",
      source => "puppet:///modules/mysql/svc-mysql";
  }
}
