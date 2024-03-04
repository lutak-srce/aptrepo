#
# Class: aptrepo::mysql
#
# This module manages mysql repo
#
# Sample Usage:
#   include aptrepo::mysql
#
class aptrepo::mysql (
  $version = '8.0',
){

  include apt

  apt::source { 'mysql':
    location => 'http://repo.mysql.com/apt/debian/',
    release  => $::lsbdistcodename,
    repos    => "mysql-apt-config mysql-${version} mysql-tools",
    pin      => '600',
    key      => { 'id' => 'BCA43417C3B485DD128EC6D4B7B3B788A8D3785C', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
