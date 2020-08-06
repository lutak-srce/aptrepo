#
# Class: aptrepo::updates
#
# This module manages Debian Updates repo
#
# Sample Usage:
#   include aptrepo::updates
#

class aptrepo::updates (){
  include ::apt
  ::apt::source { 'updates':
    location => 'http://ftp.hr.debian.org/debian/',
    release  => "${::lsbdistcodename}-updates",
    repos    => 'main contrib non-free',
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
    include  => { src => true },
  }
}
