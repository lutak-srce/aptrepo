#
# Class: aptrepo::fluentbit
#
# This module manages Fluent Bit repo
#
# Sample Usage:
#   include aptrepo::fluentbit
#
class aptrepo::fluentbit {

  include apt

  apt::source { 'fluent-bit':
    location => "https://packages.fluentbit.io/debian/${facts['os']['distro']['codename']}",
    release => $facts['os']['distro']['codename'],
    repos    => 'main',
    key      => {
      'name'   => 'fluentbit.key',
      'source' => 'https://packages.fluentbit.io/fluentbit.key',
    },
    include  => { src => false },
  }
}
