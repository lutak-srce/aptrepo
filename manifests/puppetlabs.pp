# Class: aptrepo::puppetlabs
#
# This module manages Puppetlabs repo
#
# Sample Usage:
#   include aptrepo::puppetlabs
#

class aptrepo::puppetlabs (
){
  include ::apt
  ::apt::source { 'puppetlabs':
    location => 'http://apt.puppetlabs.com/',
    release  => $::lsbdistcodename,
    repos    => 'main dependencies',
    key      => { 'id' => '47B320EB4C7C375AA9DAE1A01054B7A24BD6EC30', 'server' => 'pgp.mit.edu', },
    include  => { src => true },
  }
}
