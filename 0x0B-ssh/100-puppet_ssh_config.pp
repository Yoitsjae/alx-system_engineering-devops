#!/usr/bin/env bash
# automating tasks using Puppet

file { '/etc/ssh/ssh_config':
  ensure  => present,
content => "
    # SSH client configuration
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
