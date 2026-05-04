#
# Class: aptrepo::mssql
#
# This module manages mssql repo
#
# Sample Usage:
#   include aptrepo::mssql
#
class aptrepo::mssql {

  case $facts['os']['distro']['codename']{
    /(bookworm|bullseye|noble|jammy)/: {
      $ms_key_source = 'https://packages.microsoft.com/keys/microsoft.asc' }
    default: {
      $ms_key_source = 'https://packages.microsoft.com/keys/microsoft-2025.asc' }
  }

  include apt

  apt::source { 'mssql':
    location => "https://packages.microsoft.com/debian/${facts['os']['distro']['release']['major']}/prod",
    release  => $facts['os']['distro']['codename'],
    repos    => 'main',
    key      => {
      'name'   => 'mssql.asc',
      'source' => $ms_key_source,
    },
    include  => { src => false },
  }

}
