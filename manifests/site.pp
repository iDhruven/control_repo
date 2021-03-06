node default {
  include telegraf
#  file 
#  { '/root/README':
#    ensure  => file,
#    content => 'This is a readme',
#    owner   => 'root'
#  }
#}

#node 'ubuntu1804.localdomain' {
  include role::master_server
  file
  { '/root/README':
    ensure  => file,
    content => "Welcome to ${fqdn}\n"
  }
#  file {'/etc/secret_password.txt':
#    ensure  => file,
#    content => lookup('secret_password')
#  }
}
#node 'minetest.puppet.vm'{
#  include role::minecraft_server
#  }
#node /^web/ {
#  include role::app_server
#}
#
#node /^db/ {
#  include role::db_server
#}

node elk.local {
  include role::elk
}
