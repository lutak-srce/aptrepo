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

  apt::source { 'cran' :
    location => 'http://cloud.r-project.org/bin/linux/debian',
    release  => "${facts['os']['distro']['codename']}-cran40/",
    key      => { 'id' => '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }
}
