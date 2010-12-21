# Class: mysql::directories
#
# Setup the mysql instance directories
#
# Parameters:
#
# Actions: 
#
# Requires:
#
# Sample Usage:
#
define mysql::directories(before = Mysql::Service["$instance"]) {

  # File defaults
  File {
    ensure  => "directory",
    owner   => "mysql",
    group   => "mysql",
    mode    => "750",
  }

  file {
    "/site/$instance":
      mode => "751";
    "/site/$instance/log":;
    "/site/$instance/data":;
    "/site/$instance/tmp":;
  }
}
