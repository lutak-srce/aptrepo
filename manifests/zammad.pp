#
# Class: aptrepo::zammad
#
# This module manages zammad repo
#
# Sample Usage:
#   include aptrepo::zammad
#
class aptrepo::zammad {

  include apt

  apt::source { 'zammad':
    location     => "https://go.packager.io/srv/deb/zammad/zammad/stable/debian/",
    release      => $facts['os']['release']['major'],
    architecture => 'amd64',
    repos        => 'main',
    key          => {
      'name'   => 'zammad.asc',
      'source' => 'https://go.packager.io/srv/deb/zammad/zammad/gpg-key.gpg',
    },
    include      => { src => false },
  }
}

