#
# Class: aptrepo::mysql
#
# This module manages mysql repo
#
# Sample Usage:
#   include aptrepo::mysql
#

class aptrepo::mysql (){
  include ::apt
  ::apt::source { 'mysql':
    location => 'http://repo.mysql.com/apt/debian/',
    release  => $::lsbdistcodename,
    repos    => 'mysql-apt-config mysql-5.7 mysql-tools',
    pin      => '600',
    include  => { src => false },
  }
}
