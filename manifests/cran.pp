#
# Class: aptrepo::cran
#
# This module manages CRAN repo
#
# Sample Usage:
#   include aptrepo::cran
#
class aptrepo::cran {

  include apt

  apt::source { 'cran':
    location => 'https://cloud.r-project.org/bin/linux/debian',
    release  => "${facts['os']['distro']['codename']}-cran40/",
    key      => {
      'name'   => 'cran.asc',
      'source' => 'https://cloud.r-project.org/bin/linux/debian/marutter_pubkey.asc',
    },
    include  => { src => true },
  }
}
