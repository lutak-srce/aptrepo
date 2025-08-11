#
# Class: aptrepo::zabbix
#
# This module manages zabbix repo
#
# Sample Usage:
#   include aptrepo::zabbix
#
class aptrepo::zabbix (

  $zabbix_version = '6.0'

){

  case $facts['os']['distro']['codename']{
    default: { $zabbix_release = $facts['os']['distro']['codename'] }
    'trixie': { $zabbix_release = 'bookworm' }
  }

  include apt

  apt::source { 'zabbix':
    location     => "http://repo.zabbix.com/zabbix/${zabbix_version}/${downcase($facts['os']['name'])}/",
    release      => $zabbix_release,
    architecture => 'amd64',
    repos        => 'main',
    key          => {
      'name'   => 'zabbix.asc',
      'source' => 'https://repo.zabbix.com/zabbix-official-repo.key',
    },
    include      => { src => true },
  }
}
