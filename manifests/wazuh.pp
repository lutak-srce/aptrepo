#
# Class: aptrepo::wazuh
#
# This module manages wazuh repo
#
# Sample Usage:
#   include aptrepo::wazuh
#
class aptrepo::wazuh (
  $version = '3',
){

  include apt

  apt::source { 'wazuh':
    comment  => 'This is the WAZUH Debian repository',
    location => "https://packages.wazuh.com/${version}.x/apt/",
    release  => 'stable',
    repos    => 'main',
    key      => { 'id' => '0DCFCA5547B19D2A6099506096B3EE5F29111145', 'source' => 'https://packages.wazuh.com/key/GPG-KEY-WAZUH', },
    include  => { src => false, deb => true },
  }

}
