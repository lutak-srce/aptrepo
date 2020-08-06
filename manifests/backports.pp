#
# Class: aptrepo::backports
#
# This module manages Backports repo
#
# Sample Usage:
#   include aptrepo::backports
#

class aptrepo::backports (){
  case $::lsbdistcodename {
    default: {
      $debian_location = 'http://ftp.hr.debian.org/debian/'
    }
    /squeeze/: {
      $debian_location = 'http://backports.debian.org/debian-backports/'
    }
    /wheezy/: {
      $debian_location = 'http://ftp.hr.debian.org/debian/'
    }
  }
  include ::apt
  ::apt::source { 'backports':
    location => $debian_location,
    release  => "${::lsbdistcodename}-backports",
    repos    => 'main contrib non-free',
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
    include  => { 'src' => true },
  }
}
