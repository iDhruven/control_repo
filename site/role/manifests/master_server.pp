class role::master_server{
  include profile::base
  include profile::agent_nodes
  include profile::r10k
  include profile::puppetdb
  include profile::filebeat_puppetserver
}
