#
# Class: aptrepo::mysql
#
# This module manages mysql repo
#
# Sample Usage:
#   include aptrepo::mysql
#

class aptrepo::mysql (
  $version = '5.7',
){
  include ::apt
  ::apt::source { 'mysql':
    location => 'http://repo.mysql.com/apt/debian/',
    release  => $::lsbdistcodename,
    repos    => "mysql-apt-config mysql-${version} mysql-tools",
    pin      => '600',
    include  => { src => false },
  }
}
