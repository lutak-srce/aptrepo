#
# Class: aptrepo::libnvidia-container
#
# This module manages libnvidia-container repo
#
# Sample Usage:
#   include aptrepo::libnvidia-container
#
class aptrepo::libnvidiacontainer {

  include apt

  apt::source { 'libnvidia-container':
    location => 'https://nvidia.github.io/libnvidia-container/stable/deb/amd64/',
#    release  => $facts['os']['distro']['codename'],
#    repos    => 'stable',
    key      => { 'id' => 'C95B321B61E88C1809C4F759DDCAE044F796ECB0', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
