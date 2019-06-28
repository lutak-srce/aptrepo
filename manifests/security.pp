# Class: aptrepo::security
#
# This module manages Debian Security repo
#
# Sample Usage:
#   include aptrepo::security
#

class aptrepo::security (
){
  include ::apt
  ::apt::source { 'security':
    location          => 'http://security.debian.org/',
    release           => "${::lsbdistcodename}/updates",
    repos             => 'main contrib non-free',
    key               => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
    include           => { src => true },
  }
}
