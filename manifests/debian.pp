#
# Class: aptrepo::debian
#
# This module manages Debian repo
#
# Sample Usage:
#   include aptrepo::debian
#
class aptrepo::debian {

  case $facts['os']['distro']['codename']{
    'bullseye': {
      $repo_list  = 'main contrib non-free'
    }
    default: {
      $repo_list  = 'main contrib non-free non-free-firmware'
    }
  }

  include apt

  apt::source { 'debian':
    location => 'http://ftp.hr.debian.org/debian/',
    release  => $facts['os']['distro']['codename'],
    repos    => $repo_list,
    key      => { 'id' => '20691DFCC2C98C47952984EE00018C22381A7594', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => true },
  }
}
