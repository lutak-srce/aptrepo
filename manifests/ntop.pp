#
# Class: aptrepo::ntop
#
# This module manages ntop repo
#
# Sample Usage:
#   include aptrepo::ntop
#
class aptrepo::ntop {

  include apt

  apt::source { 'ntop-x64':
    location => "https://packages.ntop.org/apt-stable/${facts['os']['distro']['codename']}/",
    release  => 'x64/',
    key      => {
      'name'   => 'ntop-x64.asc',
      'source' => 'https://packages.ntop.org/apt-stable/ntop.key',
    },
    include  => { src => false },
  }
  apt::source { 'ntop-all':
    location => "https://packages.ntop.org/apt-stable/${facts['os']['distro']['codename']}/",
    release  => 'all/',
    key      => {
      'name'   => 'ntop-all.asc',
      'source' => 'https://packages.ntop.org/apt-stable/ntop.key',
    },
    include  => { src => false },
  }
}
