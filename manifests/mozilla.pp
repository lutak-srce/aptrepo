#
# Class: aptrepo::mozilla
#
# This module manages Mozilla repo
#
# Sample Usage:
#   include aptrepo::mozilla
#

class aptrepo::mozilla (){
  include ::apt
  ::apt::source { 'mozilla':
    location     => 'http://mozilla.debian.net/',
    release      => "${::lsbdistcodename}-backports",
    architecture => 'amd64',
    repos        => 'firefox-release',
    key          => { 'id' => '85F06FBC75E067C3F305C3C985A3D26506C4AE2A', 'server' => 'pgp.mit.edu', },
    include      => { src => true },
  }
}
