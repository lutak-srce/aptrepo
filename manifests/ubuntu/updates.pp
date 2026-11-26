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
    keyring => '/usr/share/keyrings/ubuntu-archive-keyring.gpg',
    include  => { 'src' => false },
  }
}
