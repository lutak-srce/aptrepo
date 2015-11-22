# Class: aptrepo::ossec
#
# This module manages OSSEC repo
#
# Sample Usage:
#   include aptrepo::ossec
#

class aptrepo::ossec (
){
  include ::apt
  ::apt::source { 'ossec':
    location          => 'http://ossec.wazuh.com/repos/apt/debian',
    release           => $::lsbdistcodename,
    repos             => 'main',
    include           => { src => false },
  }
}
