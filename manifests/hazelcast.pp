#
# Class: aptrepo::hazelcast
#
# This module manages Hazelcast repo
#
# Sample Usage:
#   include aptrepo::hazelcast
#
class aptrepo::hazelcast {

  include apt

  apt::source { 'hazelcast':
    location => 'https://repository.hazelcast.com/debian',
    release  => 'stable',
    repos    => 'main',
    key      => {
      'name'   => 'hazelcast.asc',
      'source' => 'https://repository.hazelcast.com/api/gpg/key/public',
    },
  }
}
