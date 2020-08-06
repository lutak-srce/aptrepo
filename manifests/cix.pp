#
# Class: aptrepo::cix
#
# This module manages CIX repo
#
# Sample Usage:
#   include aptrepo::cix
#

class aptrepo::cix (){
  include ::apt
  ::apt::source { 'cix':
    location => 'http://infra.srce.hr/repos/apt/debian',
    release  => $::lsbdistcodename,
    repos    => 'main',
    include  => { src => false },
  }
}
