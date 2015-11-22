# Class: aptrepo::cnint
#
# This module manages CARNet Debian internal repo
#
# Sample Usage:
#   include aptrepo::cnint
#

class aptrepo::cnint (
){
  include ::apt
  ::apt::source { 'cnint':
    location          => 'http://cnint.carnet.hr/cnint',
    release           => "carnet-${::lsbdistcodename}",
    repos             => 'main',
    include           => { 'src' => true },
  }
}
