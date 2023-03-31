#
# Class: aptrepo::rproject
#
# This module manages R repo
#
class aptrepo::rproject {

  include apt

  apt::source { 'rproject' :
    location => 'https://cloud.r-project.org/bin/linux/debian',
    release  => "${::lsbdistcodename}-cran35/",
    repos    => '',
    key      => { 'id' => 'E19F5F87128899B192B1A2C2AD5F960A256A04AF', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
