#
# Class: aptrepo::security
#
# This module manages Debian Security repo
#
# Sample Usage:
#   include aptrepo::security
#

class aptrepo::security (){

  include apt

  case $::lsbdistcodename {
    default: {
        apt::source { 'security':
          location => 'http://security.debian.org/',
          release  => "${::lsbdistcodename}/updates",
          repos    => 'main contrib non-free',
          key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
          include  => { src => true },
        }
    }
    /bullseye/: {
        apt::source { 'security':
          location => 'http://security.debian.org/',
          release  => "${::lsbdistcodename}-security",
          repos    => 'main contrib non-free',
          key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
          include  => { src => true },
        }
    }
    /jammy/: {
      apt::source { 'security':
        location => 'http://security.ubuntu.com/ubuntu',
        release  => "${::lsbdistcodename}-security",
        repos    => 'main restricted',
        key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
        include  => { 'src' => false },
      }
    }
  }
}
