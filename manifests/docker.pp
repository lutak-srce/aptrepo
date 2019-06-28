# Class: aptrepo::docker
#
# This module manages Docker repo
#
# Sample Usage:
#   include aptrepo::docker
#

class aptrepo::docker (
){
  include ::apt
  ::apt::source { 'docker':
    location          => 'https://download.docker.com/linux/debian/',
    release           => $::lsbdistcodename,
    repos             => 'stable',
    key               => { 'id' => '9DC858229FC7DD38854AE2D88D81803C0EBFCD88', 'server' => 'hkp.srce.hr', },
    include           => { src => false },
  }
}
