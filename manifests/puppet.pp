#
# Class: aptrepo::puppet
#
# This module manages Puppet 6 repo
#
# Sample Usage:
#   include aptrepo::puppet
#
class aptrepo::puppet {

  include apt

  apt::source { 'puppet':
    location => 'http://apt.puppetlabs.com/',
    release  => $::lsbdistcodename,
    repos    => 'puppet7',
    key      => { 'id' => 'D6811ED3ADEEB8441AF5AA8F4528B6CD9E61EF26', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
