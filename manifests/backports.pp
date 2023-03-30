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

  include apt

  case $::lsbdistcodename {
    default: {
      apt::source { 'backports':
        location => $debian_location,
        release  => "${::lsbdistcodename}-backports",
        repos    => 'main contrib non-free',
        key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
        include  => { 'src' => true },
      }
    }
    /jammy/: {
      apt::source { 'backports':
        location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
        release  => "${::lsbdistcodename}-backports",
        repos    => 'main restricted universe multiverse',
        key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
        include  => { 'src' => false },
      }
    }
  }
}
