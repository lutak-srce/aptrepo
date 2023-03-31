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
    key          => { 'id' => 'F6403F6544A38863DAA0B6E03F01618A51312F3F', 'server' => 'hkp.srce.hr', },
    include      => { src => true },
  }
}
