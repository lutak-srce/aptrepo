#
# Class: aptrepo::timescaledb
#
# This module manages timescaledb repo 
#
# Sample Usage:
#   include aptrepo::timescaledb
#
class aptrepo::timescaledb {

  include apt

  apt::source { 'timescaledb':
    location => 'https://packagecloud.io/timescale/timescaledb/debian/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'main',
    key      => { 'id' => '1005FB68604CE9B8F6879CF759F18EDF47F24417', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }
}
