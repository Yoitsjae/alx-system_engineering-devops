# Customises HTTP header in the nginx server

# Updates ubuntu server
exec { 'update server':
  command  => 'apt-get update',
  user     => 'root',
  provider => 'shell',
}
->
# Installs nginx web server on server
package { 'nginx':
  ensure   => present,
  provider => 'apt'
}
->
# This customises Nginx response header (X-Served-By: hostname)
file_line { 'add HTTP header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;'
}
->
# This start service
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx']
}
