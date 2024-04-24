#
# Class: aptrepo::cnint
#
# This module manages CARNet Debian internal repo
#
# Sample Usage:
#   include aptrepo::cnint
#
class aptrepo::cnint {

  include apt

  apt::source { 'cnint':
    location => 'http://cnint.carnet.hr/cnint',
    release  => "carnet-${facts['os']['distro']['codename']}",
    repos    => 'main',
    key      => { 'id' => '2FF030808D6D44312B6605E8CA07AF9BF48FDE18', 'server' => 'pgp.mit.edu', },
    include  => { 'src' => true },
  }
}
