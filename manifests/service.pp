class zram::service {
  service { 'zram':
    ensure    => running,
    enable    => true,
    require   => File['zram'],
    subscribe => File['zram'],
  }
}
