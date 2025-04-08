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
  case $facts['os']['distro']['codename'] {
      'bullseye': { $rel  = 'debian11'    }
      'bookworm': { $rel  = 'debian12'    }
      'jammy'   : { $rel  = 'ubuntu22.04' }
      default   : { fail('Unsupported distro') }
  }

  include apt

  apt::source { 'voxpopuli':
    location => 'https://apt.overlookinfratech.com',
    release  => $rel,
    repos    => $repo,
    key      => {
      'name'   => 'voxpopuli.gpg',
      'source' => 'https://apt.voxpupuli.org/openvox-keyring.gpg',
    },
    include  => { src => false },
  }
}
