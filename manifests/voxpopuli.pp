#
# Class: aptrepo::voxpopuli
#
# This module manages voxpopuli repo
#
# Sample Usage:
#   include aptrepo::voxpopuli
#
class aptrepo::voxpopuli (
  $repo = 'openvox7'
){
  include apt

  apt::source { 'voxpopuli':
    location => 'https://apt.overlookinfratech.com',
    release  => "${downcase($facts['os']['name'])}${facts['os']['distro']['release']['major']}",
    repos    => $repo,
    key      => {
      'name'   => 'voxpopuli.gpg',
      'source' => 'https://apt.voxpupuli.org/openvox-keyring.gpg',
    },
    include  => { src => false },
  }
}
