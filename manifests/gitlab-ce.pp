#
# Class: aptrepo::gitlab-ce
#
# This module manages Gitlab Runner repo
#
# Sample Usage:
#   include aptrepo::gitlab-ce
#
class aptrepo::gitlab-ce {

  include apt

  apt::source { 'gitlab-ce':
    location     => 'https://packages.gitlab.com/gitlab/gitlab-ce/debian/',
    release      => $::lsbdistcodename,
    architecture => 'amd64',
    repos        => 'main',
    key          => { 'id' => 'F6403F6544A38863DAA0B6E03F01618A51312F3F', 'server' => 'hkp.srce.hr', },
    include      => { src => true },
  }
}
