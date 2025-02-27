#
# Class: aptrepo::nodesource
#
# This module manages NVIDIA Container Toolkit repo
#
# Sample Usage:
#   include aptrepo::nvidiacontainertoolkit
#
class aptrepo::nvidiacontainertoolkit {

  include apt

  apt::source { 'nvidiacontainertoolkit' :
    location => "https://nvidia.github.io/libnvidia-container/stable/deb/amd64/",
    release  => '',
    repos    => '/',
    key      => { 'id' => 'C95B321B61E88C1809C4F759DDCAE044F796ECB0', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
