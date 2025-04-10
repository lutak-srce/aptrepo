#
# Class: aptrepo::sury
#
# This module manages Sury repo (other PHP versions)
#
# Sample Usage:
#   include aptrepo::sury
#
class aptrepo::sury {

  include apt

  apt::source { 'sury':
    location => 'https://packages.sury.org/php/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'main',
#    key      => { 'id' => '15058500A0235D97F5D10063B188E2B695BD4743', 'server' => 'hkp.srce.hr', },
    key      => {
      'name'   => 'sury.gpg',
      'source' => 'https://packages.sury.org/php/apt.gpg',
    },
    include  => { src => false },
  }
}
