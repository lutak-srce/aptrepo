#
# Class: aptrepo::grafana
#
# This module manages grafana repo
#
# Sample Usage:
#   include aptrepo::grafana
#
class aptrepo::grafana {

  include apt

  apt::source { 'grafana':
    location     => 'https://apt.grafana.com'
    release      => 'stable',
    repos        => 'main',
    key          => { 'id' => 'B53AE77BADB630A683046005963FA27710458545', 'server' => 'hkp.srce.hr', },
    include      => { src => true },
  }
}
