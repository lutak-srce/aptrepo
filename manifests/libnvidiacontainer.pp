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
    include  => { src => false },
  }

  apt::keyring { 'libnvidiacontainer.gpg':
    source => 'https://nvidia.github.io/libnvidia-container/gpgkey',
  }
}
