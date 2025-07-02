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
    release      => $facts['os']['distro']['codename'],
    architecture => 'amd64',
    repos        => 'main',
#    key          => { 'id' => 'F6403F6544A38863DAA0B6E03F01618A51312F3F', 'server' => 'hkp.srce.hr', },
    key          => {
      'name'   => 'gitlab.asc',
      'source' => 'https://packages.gitlab.com/gpg.key',
    },
    include      => { src => true },
  }
}
