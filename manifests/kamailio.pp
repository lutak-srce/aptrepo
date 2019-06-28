# Class: aptrepo::kamailio
#
# This module manages Kamailio repo
#
# Sample Usage:
#   include aptrepo::kamailio
#

class aptrepo::kamailio (
){
  include ::apt
  ::apt::source { 'kamailio':
    location          => 'http://deb.kamailio.org/kamailio32/',
    release           => $::lsbdistcodename,
    repos             => 'main',
    key               => { 'id' => '630CC4776344544A83A3E82DCE947A3A07D5C01D', 'server' => 'pgp.mit.edu', },
    include           => { src => true },
  }
}
