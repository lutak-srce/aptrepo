#
# Class: aptrepo::ubuntu::updates
#
# This module manages Ubuntu multiverse repo
#
# Sample Usage:
#   include aptrepo::ubuntu::multiverse
#
class aptrepo::ubuntu::multiverse () {
  include apt

  apt::source { 'multiverse':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'multiverse',
    #key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    key      => {
      'name'   => 'ubuntu-archive-2018.asc',
      'source' => 'https://keyserver.ubuntu.com/pks/lookup?op=get&options=mr&search=0x871920D1991BC93c',
    },
    include  => { 'src' => false },
  }

  apt::source { 'multiverse-updates':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${facts['os']['distro']['codename']}-updates",
    repos    => 'multiverse',
    #key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    key      => {
      'name'   => 'ubuntu-archive-2018.asc',
      'source' => 'https://keyserver.ubuntu.com/pks/lookup?op=get&options=mr&search=0x871920D1991BC93c',
    },
    include  => { 'src' => false },
  }

  apt::source { 'multiverse-security':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${facts['os']['distro']['codename']}-security",
    repos    => 'multiverse',
    #key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    key      => {
      'name'   => 'ubuntu-archive-2018.asc',
      'source' => 'https://keyserver.ubuntu.com/pks/lookup?op=get&options=mr&search=0x871920D1991BC93c',
    },
    include  => { 'src' => false },
  }
}
