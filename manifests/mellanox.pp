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
    location => 'https://linux.mellanox.com/public/repo/doca/3.2.2/debian12/x86_64/',
    release  => './',
    key      => {
      'name'   => 'mellanox.asc',
      'source' => 'https://linux.mellanox.com/public/repo/doca/3.2.2/debian12/x86_64/GPG-KEY-Mellanox.pub',
    },
    include  => { src => false },
  }
}
