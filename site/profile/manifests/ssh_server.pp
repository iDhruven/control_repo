class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwqGSFRSCvUi4wGlYH+Brhyu2VpktAqVk8MSMoZ4lX+vIjNyXXQjDfySQ8zygiB6ztOi2qNJEsxLZRPrcNOrK+ET0LIfsDoWrjBNRZD2g35i9YYsQpHogUnPGxiMV0XlEemWzlUQmDvv6FAt3vG4p2UqExXfVp+AogSuBbT3qFVFiPvX/2ksDGiL8j07ESS90vync9Q9hPpbEx0k6yi4P9Chh0oO7Rfu1qHwLQdXj018rmht+mHNl1B7BhQ0k7uFvRzv8ZQEodhq/8wfp3rIpUpbluf96xpLiS9yDKviFfrYzFjJYyK8y+K/tyK2VQVOpJQTOcxOLzNTHXlaASdFS5'
  }  
}
