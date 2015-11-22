# Class: aptrepo::openvas
#
# This module manages OpenVAS repo
#
# Sample Usage:
#   include aptrepo::openvas
#

class aptrepo::openvas (
){
  include ::apt
  ::apt::source { 'openvas':
    location          => 'http://download.opensuse.org/repositories/security:/OpenVAS:/UNSTABLE:/v6/Debian_7.0/',
    release           => './',
    repos             => '',
    key               => { 'id' => '74848501FA390C473AFDAC38BED1E87979EAFD54', 'server' => 'keys.gnupg.net', },
    include           => { src => false },
  }
}
