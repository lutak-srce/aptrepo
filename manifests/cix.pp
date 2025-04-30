#
# Class: aptrepo::cix
#
# This module manages CIX repo
#
# Sample Usage:
#   include aptrepo::cix
#
class aptrepo::cix {

  include apt

  apt::source { 'cix':
    location => 'http://cixpkg.srce.hr/repos/apt/debian',
    release  => $facts['os']['distro']['codename'],
    repos    => 'main',
    include  => { src => false },
    key      => '/etc/apt/keyrings/cix.asc',
  }

}
