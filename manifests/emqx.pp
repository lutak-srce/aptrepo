#
# Class: aptrepo::emqx
#
# This module manages emqx repo 
#
# Sample Usage:
#   include aptrepo::emqx
#
class aptrepo::emqx {

  include apt

  apt::source { 'emqx':
    location => 'https://packages.emqx.com/emqx/emqx/debian/',
    release  => $facts['os']['distro']['codename'],
    repos    => 'main',
    key      => {
      'name'   => 'emqx.asc',
      'source' => 'https://ftp.srce.hr/srce-debian/emqx.asc',
    },
    include  => { src => true },
  }
}
