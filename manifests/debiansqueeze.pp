# Class: aptrepo::debian
#
# This module manages Debian repo
#
# Sample Usage:
#   include aptrepo::debian
#
class aptrepo::debiansqueeze {

  include apt

  apt::source { 'debian':
    location => 'http://archive.debian.org/debian/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'main contrib non-free',
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'pgp.mit.edu', },
    include  => { 'src' => true },
  }
}
