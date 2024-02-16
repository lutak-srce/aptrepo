#
# Class: aptrepo::emqx
#
# This module manages emqx repo 
#
# Sample Usage:
#   include aptrepo::semqx
#
class aptrepo::emqx {

  include apt

  apt::source { 'emqx':
    location => 'https://packages.emqx.com/emqx/emqx/debian/',
    release  => $::lsbdistcodename,
    repos    => 'main',
    key      => { 'id' => '68F8AF1B10287ADE8AE7FDEC01402CC4209FFEEA', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }
}
