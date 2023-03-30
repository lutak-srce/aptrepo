#
# Class: aptrepo::puppet
#
# This module manages Puppet repo
#
# Sample Usage:
#   include aptrepo::puppet
#
class aptrepo::puppet (){

  include apt

  case $::lsbdistcodename {
    default: {
      apt::source { 'puppet':
        location => 'http://apt.puppetlabs.com/',
        release  => $::lsbdistcodename,
        repos    => 'puppet7',
        key      => { 'id' => 'D6811ED3ADEEB8441AF5AA8F4528B6CD9E61EF26', 'server' => 'hkp.srce.hr', },
        include  => { src => false },
      }
    }
    /jammy/: {
      apt::source { 'puppet':
        location => '',
        release  => "${::lsbdistcodename}-",
        repos    => 'main restricted',
        key      => { 'id' => 'F6ECB3762474EDA9D21B7022871920D1991BC93C', 'server' => 'hkp.srce.hr' },
        include  => { 'src' => false },
      }
    }
  }
}
