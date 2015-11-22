# Class: aptrepo::kali
#
# This module manages Kali repo
#
# Sample Usage:
#   include aptrepo::kali
#

class aptrepo::kali (
){
  include ::apt
  ::apt::source { 'kali':
    location          => 'http://http.kali.org/kali',
    release           => $::lsbdistcodename,
    repos             => 'kali main contrib non-free',
    key               => { 'id' => '44C6513A8E4FB3D30875F758ED444FF07D8D0BF6', 'server' => 'pks.aaiedu.hr', },
    include           => { src => false },
  }
  package { 'kali-archive-keyring': ensure => present, }
}
