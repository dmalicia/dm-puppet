class frontend {
  include firewall
exec { 'apt-update':                   
  command => '/usr/bin/apt-get install telnet'
}
firewall { '006 Allow inbound SSH':
  dport    => 22,
  proto    => 'tcp',
  action   => 'accept',
  provider => 'iptables',
}

firewall { '006 Allow inbound 80':
  dport    => 80,
  proto    => 'tcp',
  action   => 'accept',
  provider => 'iptables',
}

}
