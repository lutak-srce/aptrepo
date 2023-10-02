#
# Class: aptrepo::jenkins
#
# This module manages jenkins repo
#
# Sample Usage:
#   include aptrepo::jenkins
#
class aptrepo::jenkins {

  apt::source { 'jenkins':
    location => 'https://pkg.jenkins.io/debian',
    release  => '',
    repos    => 'binary/',
    key      => { 'id' => '63667EE74BBA1F0A08A698725BA31D57EF5975CA', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }

}
