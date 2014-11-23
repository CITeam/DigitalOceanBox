include nginx, php, mysql

exec { 'apt-get update':
  path => '/usr/bin',
}

package { 'vim':
  ensure => present,
}

package { 'git':
  ensure => present,
}
package { 'drush':
  ensure => present,
}

package { 'unzip':
  ensure => present,
}


file { '/var/www/':
  ensure => 'directory',
}

