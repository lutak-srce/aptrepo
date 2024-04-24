#
# Class: aptrepo::security
#
# This module manages Debian Security repo
#
# Sample Usage:
#   include aptrepo::security
#
class aptrepo::security {

  include apt

  case $facts['os']['distro']['codename'] {
    default: {
        apt::source { 'security':
          location => 'http://security.debian.org/',
          release  => "${facts['os']['distro']['codename']}/updates",
          repos    => 'main contrib non-free',
          key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
          include  => { src => true },
        }
    }
    /^(bullseye|bookworm)$/: {
        apt::source { 'security':
          location => 'http://security.debian.org/',
          release  => "${facts['os']['distro']['codename']}-security",
          repos    => 'main contrib non-free',
          key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
          include  => { src => true },
        }
    }
  }

}
