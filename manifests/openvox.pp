#
# Class: aptrepo::openvox
#
# This module manages openvox repo
#
# Sample Usage:
#   include aptrepo::openvox
#
class aptrepo::openvox (
  $repo = 'openvox8'
){
  include apt

  apt::source { 'openvox':
    location => 'https://apt.overlookinfratech.com',
    release  => "${downcase($facts['os']['name'])}${facts['os']['distro']['release']['major']}",
    repos    => $repo,
    key      => {
      'name'   => 'openvox.gpg',
      'source' => 'https://apt.voxpupuli.org/openvox-keyring.gpg',
    },
    include  => { src => false },
  }
}
