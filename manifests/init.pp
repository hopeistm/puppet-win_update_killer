# == Class: win_update_killer
#
# Full description of class killer here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the function of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'killer':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class win_update_killer {
  file { "AppleSoftwareUpdate Task":
    path    => "C:\Windows\System32\Tasks\Apple\AppleSoftwareUpdate.exe",
    ensure  => absent
  }

  scheduled_task { 'Adobe Acrobat Update Task':
    ensure  => absent,
    enabled => false,
    command => 'C:\Program Files (x86)\Common Files\Adobe\ARM\1.0\AdobeARM.exe'
    }

  scheduled_task { 'Adobe Flash Player Updater':
    ensure  => absent,
    enabled => false,
    command => 'C:\Windows\SysWOW\Macromed\Flash\FlashPlayerUpdateService.exe'
  }
}
