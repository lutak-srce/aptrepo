# Class: aptrepo::ossec
#
# This module manages OSSEC repo
#
# Sample Usage:
#   include aptrepo::ossec
#

class aptrepo::piwik (
){
  include ::apt
  ::apt::source { 'piwik':
    location          => 'http://debian.piwik.org/',
    release           => 'piwik',
    repos             => 'main',
    include           => { src => true },
  }
}
