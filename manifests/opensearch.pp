#
# Class: aptrepo::opensearch
#
# This module manages opensearch repo
#
# Sample Usage:
#   include aptrepo::opensearch
#
class aptrepo::opensearch {

  include apt

  apt::source { 'opensearch':
    location     => "https://artifacts.opensearch.org/releases/bundle/opensearch/3.x/apt",
    release  => 'stable',
    repos    => 'main',
    key          => {
      'name'   => 'opensearch.asc',
      'source' => 'https://artifacts.opensearch.org/publickeys/opensearch-release.pgp',
    },
    include      => { src => false },
  }
  apt::source { 'opensearch-dashboards':
    location => "https://artifacts.opensearch.org/releases/bundle/opensearch-dashboards/3.x/apt",
    release  => 'stable',
    repos    => 'main',
    keyring  => '/etc/apt/keyrings/opensearch.asc',
    include  => { src => false },
    require  => Apt::Source['opensearch'],
  }
}
