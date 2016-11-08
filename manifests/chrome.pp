# Class: aptrepo::chrome
#
# This module manages Chrome repo
#
# Sample Usage:
#   include aptrepo::chrome
#

class aptrepo::chrome (
){
  include ::apt
  ::apt::source { 'chrome':
    location          => 'http://dl.google.com/linux/chrome/deb/',
    release           => "stable",
    architecture      => 'amd64',
    repos             => 'main',
    key               => { 'id' => '4CCA1EAF950CEE4AB83976DCA040830F7FAC5991', 'server' => 'pks.aaiedu.hr', },
    include           => { src => false },
  }
}
