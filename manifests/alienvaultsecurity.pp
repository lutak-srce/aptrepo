# Class: aptrepo::alienvaultsecurity
#
# This module manages Alienvault repos
#
# Sample Usage:
#   include aptrepo::alienvaultsecurity
#

class aptrepo::alienvaultsecurity (
){
  include ::apt
  ::apt::source { 'alienvault-security':
    location          => 'http://data.alienvault.com/mirror/squeeze_security/',
    release           => "${::lsbdistcodename}/updates",
    repos             => 'main contrib',
    include           => { 'src' => false },
  }
}
