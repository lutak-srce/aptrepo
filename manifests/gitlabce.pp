#
# Class: aptrepo::gitlabce
#
# This module manages Gitlab Community edition repo
#
# Sample Usage:
#   include aptrepo::gitlabce
#
class aptrepo::gitlabce {

  include apt

  apt::source { 'gitlabce':
    location     => 'https://packages.gitlab.com/gitlab/gitlab-ce/debian/',
    release      => $facts['os']['distro']['codename'],
    architecture => 'amd64',
    repos        => 'main',
    key          => { 'id' => 'F6403F6544A38863DAA0B6E03F01618A51312F3F', 'server' => 'hkp.srce.hr', },
    include      => { src => true },
  }
}
