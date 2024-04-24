#
# Class: aptrepo::ubuntu
#
# This module manages ubuntu repo
#
# Sample Usage:
#   include aptrepo::ubuntu
#
class aptrepo::ubuntu (){

  include apt

  apt::source { 'ubuntu':
    location => 'http://nova.clouds.archive.ubuntu.com/ubuntu/',
    release  => $facts['os']['distro']['codename']
    repos    => 'main restricted',
    key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
    include  => { 'src' => false },
  }

}
