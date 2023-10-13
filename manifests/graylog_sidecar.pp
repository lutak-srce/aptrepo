#
# Class: aptrepo::graylog_sidecar
#
# This module manages Graylog Sidecar repo
#
# Sample Usage:
#   include aptrepo::graylog_sidecar
#
class aptrepo::graylog_sidecar {

  include apt

  apt::source { 'graylog-sidecar':
    location => 'https://packages.graylog2.org/repo/debian/',
    release  => 'sidecar-stable',
    repos    => '1.4',
    include  => { src => false },
  }
}
