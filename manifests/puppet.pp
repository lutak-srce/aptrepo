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
    release  => $facts['os']['distro']['codename'],
    repos    => 'puppet7',
#    key      => { 'id' => 'D6811ED3ADEEB8441AF5AA8F4528B6CD9E61EF26', 'server' => 'hkp.srce.hr', },
    key      => {
      'name'   => 'pubkey.gpg',
      'source' => 'https://apt.puppet.com/pubkey.gpg',
    },
    include  => { src => false },
  }
}
