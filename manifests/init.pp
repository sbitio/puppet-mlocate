class mlocate {
  package { 'mlocate':
    ensure => 'present',
  }
  exec { 'updatedb':
    command => '/usr/bin/updatedb',
    creates => '/var/lib/mlocate/mlocate.db',
    require => Package['mlocate'],
  }
#  cron { 'updatedb':
#    command => '/usr/bin/updatedb',
#    user    => 'root',
#    hour    => 5,
#    minute  => 17,
#  }
}
