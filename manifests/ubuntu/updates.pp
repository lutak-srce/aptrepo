#
# Class: aptrepo::ubuntu::updates
#
# This module manages Ubuntu Updates repo
#
# Sample Usage:
#   include aptrepo::updates
#
class aptrepo::ubuntu::updates (){
  include apt

  apt::source { 'updates':
    location => 'http://ubuntu.com',
    release  => "${facts['os']['distro']['codename']}-updates",
    repos    => 'main restricted',
    key      => {
      'name'   => 'ubuntu-archive-2018.asc',
      'source' => 'https://ubuntu.com/pks/lookup?op=get&options=mr&search=0x871920D1991BC93',
    },
    include  => { 'src' => false },
  }
}
