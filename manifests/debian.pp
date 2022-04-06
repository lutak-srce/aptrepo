#
# Class: aptrepo::debian
#
# This module manages Debian repo
#
# Sample Usage:
#   include aptrepo::debian
#

class aptrepo::debian (){
  include ::apt
  ::apt::source { 'debian':
    location => 'http://ftp.hr.debian.org/debian/',
    release  => $::lsbdistcodename,
    repos    => 'main contrib non-free',
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'hkp.srce.hr' },
    weak_ssl => false,
    include  => { 'src' => true },
  }
}
