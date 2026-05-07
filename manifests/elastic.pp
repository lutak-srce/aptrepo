#
# Class: aptrepo::elastic
#
# This module manages Elastic repo
#
# Sample Usage:
#   include aptrepo::elastic
#
class aptrepo::elastic {

  include apt

  apt::source { 'elastic':
    location => 'https://artifacts.elastic.co/packages/9.x/apt',
    release  => 'stable',
    repos    => 'main',
    key      => {
      'name'   => 'elastic.gpg',
      'source' => 'https://artifacts.elastic.co/GPG-KEY-elasticsearch',
    },
    include  => { src => false },
    #allow_insecure => true
  }
}
