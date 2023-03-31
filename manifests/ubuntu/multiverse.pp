#
# Class: aptrepo::ubuntu::updates
#
# This module manages Ubuntu multiverse repo
#
# Sample Usage:
#   include aptrepo::ubuntu::multiverse
#
class aptrepo::ubuntu::multiverse (){

  include apt

  apt::source { 'multiverse':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => $::lsbdistcodename,
    repos    => 'multiverse',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

  apt::source { 'multiverse-updates':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${::lsbdistcodename}-updates",
    repos    => 'multiverse',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

  apt::source { 'multiverse-security':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${::lsbdistcodename}-security",
    repos    => 'multiverse',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

}
