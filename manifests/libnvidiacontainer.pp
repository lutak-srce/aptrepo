#
# Class: aptrepo::libnvidiacontainer
#
# This module manages NVIDIA Container Toolkit repo
#
# Sample Usage:
#   include aptrepo::libnvidiacontainer
#
class aptrepo::libnvidiacontainer {

  include apt

  apt::source { 'libnvidiacontainer' :
    location => "https://nvidia.github.io/libnvidia-container/stable/deb/amd64/",
    release  => '',
    repos    => '/',
    key      => {
      'name'   => 'libnvidiacontainer.asc',
      'source' => 'https://nvidia.github.io/libnvidia-container/gpgkey',
    },
    include  => { src => false },
  }
}
