#
# Class: aptrepo::gitlabrunner
#
# This module manages Gitlab Runner repo
#
# Sample Usage:
#   include aptrepo::gitlabrunner
#
class aptrepo::gitlabrunner {

  include apt

  apt::source { 'gitlabrunner':
    location     => 'https://packages.gitlab.com/runner/gitlab-runner/debian/',
    release      => $::lsbdistcodename,
    architecture => 'amd64',
    repos        => 'main',
    key          => { 'id' => '931DA69CFA3AFEBBC97DAA8C6C57C29C6BA75A4E', 'server' => 'hkp.srce.hr', },
    include      => { src => true },
  }
}
