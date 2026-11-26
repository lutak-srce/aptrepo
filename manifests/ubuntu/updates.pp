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
    keyring  => '/etc/apt/keyrings/ubuntu-archive-2018.asc',
    include  => { 'src' => false },
  }
}
