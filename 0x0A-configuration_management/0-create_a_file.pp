# create a file using Puppet

file { '/tmp/school':
  ensure  => 'present',
  content => 'I love puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
