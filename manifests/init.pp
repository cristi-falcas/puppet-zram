# Class: zram
#
# This module manages zram
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class zram ($default_path = '/opt/zram') {
  contain zram::config
  contain zram::service

  Class['zram::config'] ~>
  Class['zram::service']
}
