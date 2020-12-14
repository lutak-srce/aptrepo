#
# Class: aptrepo::jenkins
#
# This module manages jenkins repo
#
# Sample Usage:
#   include aptrepo::jenkins
#

class aptrepo::jenkins (){

  apt::source { 'jenkins':
    location => 'https://pkg.jenkins.io/debian',
    release  => '',
    repos    => 'binary/',
    key      => { 'id' => '62A9756BFD780C377CF24BA8FCEF32E745F2C3D5', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }

}
