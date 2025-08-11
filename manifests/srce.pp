#
# Class: aptrepo::srce
#
# This module manages Srce Debian repo
#
# Sample Usage:
#   include aptrepo::srce
#
class aptrepo::srce {
  case $facts['os']['name']{
    'ubuntu': {
      $release_distro  = 'srce-bookworm'
    }
    default: {
      $release_distro  = "srce-${facts['os']['distro']['codename']}"
    }
  }
  case $facts['os']['distro']['codename']{
    default: { $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring.asc' }
    'trixie': { $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring-rsa3072.asc' }
  }

  include apt

  apt::source { 'srce' :
    location => 'http://ftp.srce.hr/srce-debian/',
    release  => $release_distro,
    repos    => 'main mon',
#    key      => { 'id' => 'E2FFF7957AEC9D5118B95BE2FECB42104089CBA3', 'server' => 'hkp.srce.hr', },
    key      => {
      'name'   => 'srce.asc',
      'source' => $srce_key_source,
    },
    include  => { src => true },
  }
}
