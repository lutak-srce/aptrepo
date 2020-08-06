#
# Class: aptrepo::adoptopenjdk
#
# This module manages AdoptOpenJDK repo
#

class aptrepo::adoptopenjdk (){
  include ::apt
  ::apt::source { 'adoptopenjdk' :
    location => 'https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/',
    release  => $::lsbdistcodename,
    repos    => 'main',
    key      => { 'id' => '8ED17AF5D7E675EB3EE3BCE98AC3B29174885C03', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
