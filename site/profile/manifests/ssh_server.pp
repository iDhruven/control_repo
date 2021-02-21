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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD46yIObpdOu8ai+UfQQ4u61HCPoKelljevily/fvnz41KF3He8JUiFHc3brirmQHtD4XeQnzwWxj3MPwVjyjmn13v71N/EOQX3jIoxVeZ+GhJx87rFGKAEVmf2I58aISmayXGJVo1qHsSNAM0Lrx+WTBu5W95FvHR5FNYEewcTFUt3YaYLdgzXytCUivFsaRgkAwO/HgTIqNEcW+cwiX5EWQQ2p+CU6b9CHXodW6xBH25XqfhWHlSHl7Hlius3hXkePtUQWauW2E/hBFUDW4Fg5wktCuQ4Hpoa/9novOXFrZIaea68l9YMT65laCWZ0PylHKS9fS7Fky3IruFnqx5F'
  }  
}
