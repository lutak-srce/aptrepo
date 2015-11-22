# Class: aptrepo::carnet
#
# This module manages CARNet Debian repo
#
# Sample Usage:
#   include aptrepo::carnet
#

class aptrepo::carnet (
){
  include ::apt
  ::apt::source { 'carnet':
    location          => 'http://ftp.carnet.hr/carnet-debian/',
    release           => "carnet-${::lsbdistcodename}",
    repos             => 'main non-free',
    key               => { 'id' => '0E1183A646FC9255D1B1966453FBD252EC72006A', 'server' => 'pks.aaiedu.hr', },
    include           => { 'src' => true },
  }
  #package { 'carnet-keyring': ensure => present, }
}
