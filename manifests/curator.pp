# Class: aptrepo::curator
#
#
class aptrepo::curator {

  include apt

  apt::source { 'curator':
    location     => 'https://packages.elastic.co/curator/5/debian',
    release      => stable,
    architecture => 'amd64',
    repos        => 'main',
    key          => {
      'name'   => 'curator.asc',
      'source' => 'https://packages.elastic.co/GPG-KEY-elasticsearch',
    },
    include      => { src => false },
  }
}
