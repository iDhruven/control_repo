node default {
#  file 
#  { '/root/README':
#    ensure  => file,
#    content => 'This is a readme',
#    owner   => 'root'
#  }
}

node 'ubuntu1804.localdomain' {
  include role::master_server
  file 
  { '/root/README':
    ensure  => file,
    content => "Welcome to ${fqdn}\n"
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
