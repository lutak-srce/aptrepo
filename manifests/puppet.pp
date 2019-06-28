# Class: aptrepo::puppet
#
# This module manages Puppet 6 repo
#
# Sample Usage:
#   include aptrepo::puppet
#

class aptrepo::puppet (
){
  include ::apt
  ::apt::source { 'puppet':
    location => 'http://apt.puppetlabs.com/',
    release  => $::lsbdistcodename,
    repos    => 'puppet6',
    key      => { 'id' => '6F6B15509CF8E59E6E469F327F438280EF8D349F', 'server' => 'pgp.mit.edu', },
    include  => { src => false },
  }
}
