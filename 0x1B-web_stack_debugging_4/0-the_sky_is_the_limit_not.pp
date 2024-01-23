# Fix request limit at Nginx
exec { 'fix-for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin'], # Specify the correct path
  notify  => Exec['nginx-restart'], # Notify the restart when this exec changes
}

# Restart Nginx
exec { 'nginx-restart':
  command     => '/etc/init.d/nginx restart', # Correct the restart command
  refreshonly => true, # This ensures that the exec only runs when notified
  path        => ['/usr/local/bin', '/bin'], # Specify the correct path
}
