#
# Class: aptrepo::gitlabrunner
#
# This module manages Gitlab Runner repo
#
# Sample Usage:
#   include aptrepo::gitlabrunner
#

class aptrepo::gitlabrunner (){
  include ::apt
  ::apt::source { 'gitlabrunner':
    location     => 'https://packages.gitlab.com/runner/gitlab-runner/debian/',
    release      => $::lsbdistcodename,
    architecture => 'amd64',
    repos        => 'main',
    key          => { 'id' => '1A4C919DB987D435939638B914219A96E15E78F4', 'server' => 'hkp.srce.hr', },
    include      => { src => true },
  }
}
