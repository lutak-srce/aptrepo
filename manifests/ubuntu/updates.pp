#
# Class: aptrepo::ubuntu::updates
#
# This module manages Ubuntu Updates repo
#
# Sample Usage:
#   include aptrepo::updates
#
class aptrepo::ubuntu::updates (){

  include apt

  apt::source { 'updates':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => "${facts['os']['distro']['codename']}-updates",
    repos    => 'main restricted',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

}
