#
# Class: aptrepo::clickhouse
#
# This module manages Clickhouse Debian repo
#
# Sample Usage:
#   include aptrepo::clickhouse
#
class aptrepo::clickhouse {
  include apt
  apt::source { 'chrome':
    location     => 'https://packages.clickhouse.com/deb',
    release      => 'stable',
    architecture => 'amd64',
    repos        => 'main',
    key      => {
      'name'   => 'clickhouse.asc',
      'source' => 'https://packages.clickhouse.com/rpm/lts/repodata/repomd.xml.key',
    },
    include  => { src => true },
  }
}
