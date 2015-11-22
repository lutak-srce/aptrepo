# Class: aptrepo::alienvaultlts
#
# This module manages Alienvault repos
#
# Sample Usage:
#   include aptrepo::alienvaultlts
#

class aptrepo::alienvaultlts (
){
  include ::apt
  ::apt::source { 'alienvault-lts':
    location          => 'http://data.alienvault.com/mirror/squeeze_lts/',
    release           => "${::lsbdistcodename}-lts",
    repos             => 'main contrib',
    include           => { 'src' => false },
  }
}
