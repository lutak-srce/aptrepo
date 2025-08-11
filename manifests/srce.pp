#
# Class: aptrepo::srce
#
# This module manages Srce Debian repo
#
# Sample Usage:
#   include aptrepo::srce
#
class aptrepo::srce {

  case $facts['os']['distro']['codename']{
    /(bookworm|bullseye)/: {
      $release_distro  = "srce-${facts['os']['distro']['codename']}"
      $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring.asc'
    }
    /(noble|jammy)/: {
      $release_distro  = 'srce-trixie'
      $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring-rsa3072.asc'
    }
    default: {
      $release_distro  = "srce-${facts['os']['distro']['codename']}"
      $srce_key_source = 'http://ftp.srce.hr/srce-debian/srce-keyring-rsa3072.asc'
    }
  }

  include apt

  apt::source { 'srce' :
    location => 'http://ftp.srce.hr/srce-debian/',
    release  => $release_distro,
    repos    => 'main mon',
    key      => {
      'name'   => 'srce.asc',
      'source' => $srce_key_source,
    },
    include  => { src => true },
  }
}
