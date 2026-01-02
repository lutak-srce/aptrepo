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
    release  => $facts['os']['distro']['codename'],
    repos    => "mysql-apt-config mysql-${version} mysql-tools",
    pin      => '600',
#    key      => { 'id' => 'BCA43417C3B485DD128EC6D4B7B3B788A8D3785C', 'server' => 'hkp.srce.hr', },
    key      => {
      'name'   => 'mysql.asc',
      'source' => 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xb7b3b788a8d3785c',
    },
    include  => { src => false },
  }
}
