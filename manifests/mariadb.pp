#
# Class: aptrepo::mariadb
#
# This module manages MariaDB repo
#
# Sample Usage:
#   include aptrepo::mariadb
#
class aptrepo::mariadb {

  include apt

  apt::source { 'mariadb':
    location     => 'http://mariadb.cu.be/repo/5.5/debian',
    release      => $facts['os']['distro']['codename'],
    architecture => 'amd64',
    repos        => 'main',
    key          => { 'id' => '199369E5404BD5FC7D2FE43BCBCB082A1BB943DB', 'server' => 'keyserver.ubuntu.com', },
    include      => { src => true },
  }
}
