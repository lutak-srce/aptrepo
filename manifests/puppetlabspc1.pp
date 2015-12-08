# Class: aptrepo::puppetlabspc1
#
# This module manages Puppetlabs repo
#
# Sample Usage:
#   include aptrepo::puppetlabspc1
#

class aptrepo::puppetlabspc1 (
){
  include ::apt
  ::apt::source { 'puppetlabspc1':
    location          => 'http://apt.puppetlabs.com/',
    release           => $::lsbdistcodename,
    repos             => 'PC1',
    key               => { 'id' => '47B320EB4C7C375AA9DAE1A01054B7A24BD6EC30', 'server' => 'pks.aaiedu.hr', },
    include           => { src => true },
  }
}
