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
    location     => 'https://repository.hazelcast.com/debian',
    release      => 'stable',
    repos        => 'main',
    key          => { 'id' => '39A1EBFA22C0181014C4899D860675EEBAC22464', 'server' => 'hkp.srce.hr', },
  }
}
