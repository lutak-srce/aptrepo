#
# Class: aptrepo::haproxy
#
# This module manages haproxy repo
#
# Sample Usage:
#   include aptrepo::haproxy
#
class aptrepo::haproxy (
  $version = '3.2',
){

  include apt

  apt::source { 'haproxy':
    location => 'http://haproxy.debian.net',
    release  => "${facts['os']['distro']['codename']}-backports-${version}",
    repos    => 'main',
#    key      => { 'id' => 'AEF2348766F371C689A7360095A42FE8353525F9', 'server' => 'hkp.srce.hr', },
    key      => {
      'name'   => 'haproxy-archive-keyring.gpg',
      'source' => 'https://haproxy.debian.net/haproxy-archive-keyring.gpg',
    },
    include  => { src => false, deb => true },
  }

}
