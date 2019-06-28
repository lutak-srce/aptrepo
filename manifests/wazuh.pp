# Class: aptrepo::wazuh
#
# This module manages wazuh repo
#
# Sample Usage:
#   include aptrepo::wazuh
#

class aptrepo::wazuh (
){

  include ::apt

  case $::lsbdistcodename {
    /(precise|trusty|vivid|wily|xenial|yakketi)/: {
      ::apt::source { 'wazuh':
        comment           => 'This is the WAZUH Ubuntu repository',
        location          => 'https://packages.wazuh.com/3.x/apt/',
        release           => 'stable',
        repos             => 'main',
        key               => { 'id' => '0DCFCA5547B19D2A6099506096B3EE5F29111145', 'source' => 'https://packages.wazuh.com/key/GPG-KEY-WAZUH', },
        include           => { src => false, deb => true },
      }
    }
    /^(jessie|wheezy|stretch|buster|sid)$/: {
      ::apt::source { 'wazuh':
        comment           => 'This is the WAZUH Debian repository',
        location          => 'https://packages.wazuh.com/3.x/apt/',
        release           => 'stable',
        repos             => 'main',
        key               => { 'id' => '0DCFCA5547B19D2A6099506096B3EE5F29111145', 'source' => 'https://packages.wazuh.com/key/GPG-KEY-WAZUH', },
        include           => { src => false, deb => true },
      }
    }
    default: { fail('This ossec module has not been tested on your distribution (or lsb package not installed)') }
  }
}
