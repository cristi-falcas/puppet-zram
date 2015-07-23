# Class: zram
#
# This module manages zram
#
# === Parameters:
# $default_path::                path where to copy zram_stats.sh script
#
# Sample Usage:
# include zram
#
class zram ($default_path = '/opt/zram') {
  contain zram::config
  contain zram::service

  Class['zram::config'] ~>
  Class['zram::service']
}
