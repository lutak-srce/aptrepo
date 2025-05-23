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

  include apt

  apt::source { 'zabbix':
    location     => "http://repo.zabbix.com/zabbix/${zabbix_version}/${downcase($facts['os']['name'])}/",
    release      => $facts['os']['distro']['codename'],
    architecture => 'amd64',
    repos        => 'main',
    key          => {
      'name'   => 'zabbix.asc',
      'source' => 'https://repo.zabbix.com/zabbix-official-repo.key',
    },
    include      => { src => true },
  }
}
