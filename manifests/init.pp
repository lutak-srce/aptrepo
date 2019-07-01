# Class: aptrepo
#
# This module manages aptrepo packages
#
class aptrepo {

  # Configure repos prior to installing packages
  unless $facts['os']['distro']['release']['major'] == '9' {
    Apt::Source <| |> -> Package <| |>
  }

  case $::operatingsystem {
    'debian': { package { 'debian-keyring': ensure => present, } }
    'ubuntu': { }
    default:  { }
  }

}
