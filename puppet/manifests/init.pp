include nginx, php, mysql

exec { 'apt-get update':
  path => '/usr/bin',
}

package { ['vim', 'htop']:
  ensure => present,
}

package { 'git':
  ensure => present,
}
package { ['drush', 'pv']:
  ensure => present,
}

package { 'unzip':
  ensure => present,
}


file { '/var/www/':
  ensure => 'directory',
}

