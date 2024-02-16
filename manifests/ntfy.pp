#
# Class: aptrepo::ntfy
#
# This module manages ntfy repo
#
# Sample Usage:
#   include aptrepo::ntfy
#
class aptrepo::ntfy {

  include apt

  apt::source { 'ntfy':
    location     => 'https://archive.heckel.io/apt',
    architecture => 'amd64',
    release      => 'debian',
    repos        => 'main',
    key          => { 'id' => 'CF871F1E8399DAEF470832661D5B8EDFB2476E53', 'server' => 'hkp.srce.hr', },
    include      => { src => false },
  }
}
