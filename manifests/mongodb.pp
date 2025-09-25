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
    key      => {
      'name'   => 'mongodb.asc',
      'source' => 'https://www.mongodb.org/static/pgp/server-7.0.asc',
    },
    include  => { src => false },
  }
}
