#
# Class: aptrepo::ubuntu::updates
#
# This module manages Ubuntu universe repo
#
# Sample Usage:
#   include aptrepo::ubuntu::universe
#
class aptrepo::ubuntu::universe (){

  include apt

  apt::source { 'universe':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => $facts['os']['distro']['release']['major'] ,
    repos    => 'universe',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

  apt::source { 'universe-updates':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${::lsbdistcodename}-updates",
    repos    => 'universe',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

  apt::source { 'universe-security':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${::lsbdistcodename}-security",
    repos    => 'universe',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

}
