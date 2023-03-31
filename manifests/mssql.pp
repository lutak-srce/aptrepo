#
# Class: aptrepo::mssql
#
# This module manages mssql repo
#
# Sample Usage:
#   include aptrepo::mssql
#
class aptrepo::mssql {

  include apt

  apt::source { 'mssql':
    location => "https://packages.microsoft.com/debian/${::lsbmajdistrelease}/prod",
    release  => $::lsbdistcodename,
    repos    => 'main',
    key      => { 'id' => 'BC528686B50D79E339D3721CEB3E94ADBE1229CF', 'server' => 'hkp.srce.hr', },
    include  => { src => false },
  }

}
