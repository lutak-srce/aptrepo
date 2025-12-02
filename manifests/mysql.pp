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
      'name'   => 'mysql.gpg',
      'source' => 'https://repo.mysql.com/apt/debian/dists/trixie/Release.gpg',
    },
    include  => { src => false },
  }
}
