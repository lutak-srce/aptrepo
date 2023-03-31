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
    release  => "${::lsbdistcodename}-cran40/",
    repos    => '',
    key      => { 'id' => 'E19F5F87128899B192B1A2C2AD5F960A256A04AF', 'server' => 'hkp.srce.hr', },
    include  => { src => true },
  }
}
