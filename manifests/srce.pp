#
# Class: aptrepo::srce
#
# This module manages Srce Debian repo
#
# Sample Usage:
#   include aptrepo::srce
#
class aptrepo::srce {

  include apt

  apt::source { 'srce' :
    location => 'http://ftp.srce.hr/srce-debian/',
    release  => "srce-${::lsbdistcodename}",
    repos    => 'main mon',
    key      => { 'id' => 'E2FFF7957AEC9D5118B95BE2FECB42104089CBA3', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }
}
