#
# Class: aptrepo::elastic
#
# This module manages Elastic repo
#
# Sample Usage:
#   include aptrepo::elastic
#
class aptrepo::elastic (
  $version = '9.x',
){

  include apt

  apt::source { 'elastic':
    location => "https://artifacts.elastic.co/packages/${version}/apt",
    release  => 'stable',
    repos    => 'main',
    key      => {
      'name'   => 'elastic.asc',
      'source' => 'https://packages.elastic.co/GPG-KEY-elasticsearch',
    },
    include  => { src => false },
  }
}
