#
# Class: aptrepo::elastic
#
# This module manages Elastic repo
#
# Sample Usage:
#   include aptrepo::elastic
#
class aptrepo::elastic {

  include apt

  apt::source { 'elastic-8.x':
    location => 'https://artifacts.elastic.co/packages/8.x/apt',
    release  => 'stable',
    repos    => 'main',
    include  => { src => false },
  }
}
