#
# Class: aptrepo::debianlts
#
# This module manages Debian repo
#
# Sample Usage:
#   include aptrepo::debianlts
#
class aptrepo::debianlts {

  include apt

  apt::source { 'debian-lts':
    location => 'http://ftp.hr.debian.org/debian/',
    release  => "${facts['os']['distro']['codename']}-lts",
    repos    => 'main contrib non-free',
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
    include  => { src => true },
  }
}
