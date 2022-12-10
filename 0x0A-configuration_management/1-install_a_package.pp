# install a package using  puppet.

exec { 'install flask':
  command => '/usr/bin/apt-get install -y flask'
}

exec { 'install puppet-lint':
  command => '/usr/bin/gem install puppet-lint -v 2.0.1'
}

package { 'flask':
  ensure => 'installed',
  before => Exec['install flask']
}

package { 'puppet-lint':
  ensure  => 'installed',
  before  => Exec['install puppet-lint'],
  require => Package['flask']
}
