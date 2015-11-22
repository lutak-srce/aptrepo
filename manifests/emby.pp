# Class: aptrepo::alienvaultsecurity
#
# This module manages Alienvault repos
#
# Sample Usage:
#   include aptrepo::alienvaultsecurity
#

class aptrepo::emby (
){
  include ::apt
  ::apt::source { 'emby':
    location          => 'http://download.opensuse.org/repositories/home:/emby/Debian_7.0/',
    release           => "/",
    repos             => '',
    include           => { 'src' => false },
  }
}
