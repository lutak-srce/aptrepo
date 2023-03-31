#
# Class: aptrepo::radiatorsoftware_srce
#
# This module manages radiatorsoftware for Srce
#
class aptrepo::radiatorsoftware_srce {

  include apt

  apt::source { 'radiatorsoftware_srce' :
    location => 'https://downloads.radiatorsoftware.com/repo/radiator/downloads/srce.hr-1/e6fcfdabb426f99a42d4f62b2f099ce803e7138c99f035741114dde06ea690c4/ubuntu',
    release  => $::lsbdistcodename,
    repos    => 'stable',
    key      => { 'id' => '71FDBD745DA6CA9F7654B3D07E3FE75EB09DF6BB', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }
}
