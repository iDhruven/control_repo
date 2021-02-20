node default {
  file 
  { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root'
  }
}

node 'ubuntu1804.localdomain' {
  include role::master_server
}
