#
# Class: aptrepo::ubuntu::docker
#
# This module manages Docker repo
#
# Sample Usage:
#   include aptrepo::ubuntu::docker
#
class aptrepo::ubuntu:docker {

  include apt

  apt::source { 'docker':
    location => 'https://download.docker.com/linux/ubuntu/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'stable',
    key      => {
      'name'   => 'docker.asc',
      'source' => 'https://download.docker.com/linux/ubuntu/gpg',
    },
    include  => { src => false },
  }
}
