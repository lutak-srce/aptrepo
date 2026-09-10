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
      'source' => 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7',
    },
    include  => { src => true },
  }
}
