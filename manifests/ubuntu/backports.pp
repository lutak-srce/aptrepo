#
# Class: aptrepo::ubuntu::backports
#
# This module manages Backports repo
#
# Sample Usage:
#   include aptrepo::ubuntu::backports
#
class aptrepo::ubuntu::backports (){

  include apt

  apt::source { 'backports':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${facts['os']['distro']['codename']}-backports",
    repos    => 'main restricted universe multiverse',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

}
