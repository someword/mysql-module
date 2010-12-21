#
# ATTENTION: This file is managed in puppet.  Local changes will be discarded.
#
# This profile sets mysql specific environmental variables
# $Id: bzr-profile.sh 226 2010-01-01 22:57:18Z dolsen $
#

# We will set different environmental variables for msyql client and
# mysql server processes.

MYSQL_HOME_5=/opt/mysql/5.1
MYSQL_HOME_4=/opt/mysql/4.1.22
PATH=${MYSQL_HOME_4}/bin:${PATH}

export MYSQL_HOME_5 MYSQL_HOME_4 PATH
