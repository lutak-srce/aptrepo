#
# Class: aptrepo::ubuntu::security
#
# This module manages Ubuntu Security repo
#
# Sample Usage:
#   include aptrepo::ubuntu::security
#
class aptrepo::ubuntu::security (){

  include apt

    apt::source { 'security':
      location => 'http://security.ubuntu.com/ubuntu',
      release  => "${facts['os']['distro']['codename']}-security",
      repos    => 'main restricted',
      key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
      include  => { 'src' => false },
    }

}
