# Class: aptrepo::gluster
#
# This module manages GlusterFS repo
#
# Sample Usage:
#   include aptrepo::gluster
#

class aptrepo::gluster (
){
  include ::apt
  ::apt::source { 'gluster':
    location     => "http://download.gluster.org/pub/gluster/glusterfs/3.4/3.4.5/Debian/${::lsbdistcodename}/apt",
    release      => $::lsbdistcodename,
    architecture => 'amd64',
    repos        => 'main',
    key          => { 'id' => '46B0B984B3722B5C0D4E929111B2C94621C74DF2', 'server' => 'keys.gnupg.net', },
    include      => { src => true },
  }
}
