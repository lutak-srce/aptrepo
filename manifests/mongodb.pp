#
# Class: aptrepo::mongodb
#
# This module manages Mongodb repo
#
# Sample Usage:
#   include aptrepo::mongodb
#
class aptrepo::mongodb (
  $version = '5.0',
){

  include apt

  apt::source { 'mongodb':
    location => 'http://repo.mongodb.org/apt/debian/',
    release  => "${facts['os']['distro']['codename']}/mongodb-org/${version}",
    repos    => 'main',
    key      => { 'id' => 'F5679A222C647C87527C2F8CB00A0BD1E2C63C11', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
