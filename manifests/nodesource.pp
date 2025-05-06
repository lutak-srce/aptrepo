#
# Class: aptrepo::nodesource
#
# This module manages Nodesource repo
#
# Sample Usage:
#   include aptrepo::nodesource
#
class aptrepo::nodesource (
  $version = '16',
){

  include apt

  apt::source { 'nodesource' :
    location     => "https://deb.nodesource.com/node_${version}.x",
    release      => $facts['os']['distro']['codename'],
    architecture => 'amd64',
    repos        => 'main',
#    key          => { 'id' => '9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280', 'server' => 'hkp.srce.hr', },
    key          => {
      'name'   => 'nodesource.gpg',
      'source' => 'http://ftp.srce.hr/srce-debian/nodesource.gpg',
    },
    include      => { src => true },
  }
}
