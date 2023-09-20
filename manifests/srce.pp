#
# Class: aptrepo::srce
#
# This module manages Srce Debian repo
#
# Sample Usage:
#   include aptrepo::srce
#
class aptrepo::srce {
  case $::operatingsystem {
    'ubuntu': {
      $release_distro  = 'srce-bullseye'
    }
    default: {
      $release_distro  = "srce-${::lsbdistcodename}"
    }
  }

  include apt

  apt::source { 'srce' :
    location => 'http://ftp.srce.hr/srce-debian/',
    release  => $release_distro,
    repos    => 'main mon',
    key      => { 'id' => 'E2FFF7957AEC9D5118B95BE2FECB42104089CBA3', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }
}
