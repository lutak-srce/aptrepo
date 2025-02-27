#
# Class: aptrepo::docker
#
# This module manages Docker repo
#
# Sample Usage:
#   include aptrepo::docker
#
class aptrepo::docker {

  include apt

  apt::source { 'docker':
    location => 'https://download.docker.com/linux/debian/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'stable',
    key      => {
      'name'   => 'docker.asc',
      'source' => 'https://download.docker.com/linux/debian/gpg',
    },
    include  => { src => false },
  }
}
