#
# Class: aptrepo::nodesource
#
# This module manages Nodesource repo
#
# Sample Usage:
#   include aptrepo::nodesource
#

class aptrepo::nodesource (){
  include ::apt
  ::apt::source { 'nodesource' :
    location => 'https://deb.nodesource.com/node_13.x',
    release  => "${::lsbdistcodename}",
    repos    => 'main',
    key      => { 'id' => '9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }

}
