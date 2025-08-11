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
      $ubuntu = true
    }
    default: {
    }
  }
  case $facts['os']['distro']['codename']{
    default: { $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring.asc' }
    'trixie': { $trixie = true }
  }
  if $trixie == true {
    $release_distro  = 'srce-trixie'
    $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring-rsa3072.asc'
  } elseif $ubuntu == true {
    $release_distro  = 'srce-trixie'
    $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring-rsa3072.asc'
  } else {
    $release_distro = $facts['os']['distro']['codename']
    $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring.asc'
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
