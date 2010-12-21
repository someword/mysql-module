node some-db-server {

  mysql::instance { "db01":
    major => "v4",
    zpool => "dbpool",
  }
  mysql::instance { "db02":
    major => "v4",
  }
  mysql::instance { "db03":
    major => "v5",
    zpool => "dbpool",
  }

}
