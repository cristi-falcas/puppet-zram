class zram::config {
  file { $::zram::default_path:
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  } ->
  file { "${::zram::default_path}/zram_stats.sh":
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    content => template("${module_name}/zram_stats.sh"),
  }

  file { 'zram':
    ensure => file,
    path   => '/etc/init.d/zram',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    content => template("${module_name}/zram.sh"),
  }
}
