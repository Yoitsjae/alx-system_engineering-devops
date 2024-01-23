# Fix limit file at hbton user.
exec { 'fix-limit-hbton-user':
  command => 'sed -i "/holberton hard/s/5/10000/" /etc/security/limits.conf',
  path    => ['/usr/local/bin', '/bin'], # Specify the correct path
  notify  => Exec['increase-soft-file'], # Notify the increase soft file exec
}

# Increase soft file limit hbton user.
exec { 'increase-soft-file':
  command     => 'sed -i "/holberton soft/s/4/20000/" /etc/security/limits.conf',
  path        => ['/usr/local/bin', '/bin'], # Specify the correct path
  refreshonly => true, # This ensures that the exec only runs when notified
}
