# Class: mysql::service
#
# Setup the service manifest and methods
#
# Parameters:
#
# Actions: 
#
# Requires:
#
# Sample Usage:
#
define mysql::service() {


  # Resource order
  Packages::Install["$package"] -> File["/lib/svc/method/svc-mysql"] -> File["/var/svc/manifest/site/mysql-$instance.xml"] ~> Exec["/usr/sbin/svccfg import /var/svc/manifest/site/mysql-$instance.xml"] ~> Service["mysql:$instance"]

  # The mysql manifest 
  file { "/var/svc/manifest/site/mysql-$instance.xml":
      content => template("mysql/mysql.xml.erb"),
  }

  exec { "/usr/sbin/svccfg import /var/svc/manifest/site/mysql-$instance.xml":
    refreshonly => true
  }

  service { "mysql:$instance": }
}
