#
# Class: aptrepo::veeamagent
#
# This module manages veeamagent repo
# deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/DEB-9BB5AC67.gpg] https://repository.veeam.com/backup/linux/agent-13/dpkg/debian/public stable veeam
# Sample Usage:
#   include aptrepo::veeamagent
#
class aptrepo::veeamagent {

  include apt

  apt::source { 'veeamagent':
    location     => 'https://repository.veeam.com/backup/linux/agent-13/dpkg/debian/public',
    release      => 'stable',
    repos        => 'veeam',
    architecture => 'amd64',
    key          => {
      'name'   => 'veeam.gpg',
      'source' => 'https://repository.veeam.com/keys/DEB-9BB5AC67.gpg',
    },
    include      => { src => false, deb => true },
  }

}
