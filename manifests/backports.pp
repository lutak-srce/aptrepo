#
# Class: aptrepo::backports
#
# This module manages Debian Backports repo
#
# Sample Usage:
#   include aptrepo::backports
#
class aptrepo::backports {

  include apt

  apt::source { 'backports':
    location => 'http://ftp.hr.debian.org/debian/',
    release  => "${facts['os']['distro']['codename']}-backports",
    repos    => 'main contrib non-free',
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
    include  => { 'src' => true },
  }

}
