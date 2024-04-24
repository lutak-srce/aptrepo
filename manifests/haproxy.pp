#
# Class: aptrepo::haproxy
#
# This module manages haproxy repo
#
# Sample Usage:
#   include aptrepo::haproxy
#
class aptrepo::haproxy (
  $version = '2.4',
){

  include apt

  apt::source { 'haproxy':
    location => 'http://haproxy.debian.net',
    release  => "${facts['os']['distro']['codename']}-backports-${version}",
    repos    => 'main',
    key      => { 'id' => 'AEF2348766F371C689A7360095A42FE8353525F9', 'server' => 'hkp.srce.hr', },
    include  => { src => false, deb => true },
  }

}
