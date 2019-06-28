# Class: aptrepo::mysql
#
# This module manages mysql repo
#
# Sample Usage:
#   include aptrepo::mysql
#

class aptrepo::mysql (
){

  $lsbdistid_downcase = downcase($lsbdistid)

  include ::apt
  ::apt::source { 'mysql':
    location          => "http://repo.mysql.com/apt/debian/",
    release           => $::lsbdistcodename,
    repos             => 'mysql-apt-config mysql-5.6 mysql-tools',
    pin               => '600',
    include           => { src => false },
  }
}
