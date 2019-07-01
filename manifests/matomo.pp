class aptrepo::matomo (
){
  include ::apt
  ::apt::source { 'matomo':
    location => 'http://debian.matomo.org/',
    release  => 'piwik',
    repos    => 'main',
    key      => { 'id' => '1FD752571FE36FF23F78F91B81E2E78B66FED89E', 'server' => 'keys.gnupg.net', },
    include  => { src => true },
  }
}
