# Puppet Configuration for System Limits

This Puppet configuration is designed to manage system limits for the 'hbton' user.

## Table of Contents

- [Description](#description)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Configuration Details](#configuration-details)
- [Contributing](#contributing)
- [License](#license)

## Description

This Puppet configuration consists of two Exec resources:

1. **fix-limit-hbton-user**: Fixes the hard file limit for the 'holberton' user in the `/etc/security/limits.conf` file.

2. **increase-soft-file**: Increases the soft file limit for the 'holberton' user in the `/etc/security/limits.conf` file.

The configuration uses the `sed` command to modify the configuration files.

## Prerequisites

Ensure that Puppet is installed on your system. You can install it by following the official [Puppet installation guide](https://puppet.com/docs/puppet/7/installation.html).

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone <repository_url>
Modify the Puppet code in the init.pp file according to your requirements.

Run the Puppet manifest:

bash
Copy code
puppet apply init.pp
Configuration Details
fix-limit-hbton-user:

Command: sed -i "/holberton hard/s/5/10000/" /etc/security/limits.conf
Path: ['/usr/local/bin', '/bin']
Notify: increase-soft-file
increase-soft-file:

Command: sed -i "/holberton soft/s/4/20000/" /etc/security/limits.conf
Path: ['/usr/local/bin', '/bin']
Refreshonly: true
