# Class: aptrepo::wazuh
#
# This module manages wazuh repo
#
# Sample Usage:
#   include aptrepo::wazuh
#

class aptrepo::wazuh_new (
){

  $lsbdistid_downcase = downcase($lsbdistid)

  include ::apt
  ::apt::source { 'wazuh':
    location          => "https://packages.wazuh.com/apt",
    release           => $::lsbdistcodename,
    repos             => 'main',
    pin               => '600',
    include           => { src => false },
  }
}
