#
# Class: aptrepo::mellanox
#
# This module manages Mellanox repo
#
# Sample Usage:
#   include aptrepo::mellanox
#
class aptrepo::mellanox {

  include apt

  apt::source { 'mellanox':
    location => 'http://linux.mellanox.com/public/repo/doca/latest-3.2-LTS/debian12/x86_64/',
    release  => './',
    repos    => '',
    key      => {
      'name'   => 'mellanox.asc',
      'source' => 'http://linux.mellanox.com/public/repo/doca/latest-3.2-LTS/debian12/x86_64/GPG-KEY-Mellanox.pub',
    },
    include  => { src => false },
  }
}
