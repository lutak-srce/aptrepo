#
# Class: aptrepo::adoptium
#
# This module manages Adoptium repo
#
class aptrepo::adoptium {

  include apt

  apt::source { 'adoptium' :
    location => 'https://packages.adoptium.net/artifactory/deb/',
    release  => $facts['os']['distro']['release']['major'] ,
    repos    => 'main',
    key      => { 'id' => '3B04D753C9050D9A5D343F39843C48A565F8F04B', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }

}
