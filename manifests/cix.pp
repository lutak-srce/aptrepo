class aptrepo::cix (
){
  include ::apt
  ::apt::source { 'cix':
    location => 'http://infra.srce.hr/repos/apt/debian',
    release  => $::lsbdistcodename,
    repos    => 'main',
    include  => { src => false },
  }
}
