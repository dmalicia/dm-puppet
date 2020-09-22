node default { } 
node /^monitoring(?:-\d+)?/ { 
    include promgrafana 
file {'/etc/motd':                                          
  ensure  => 'present',                                          
  mode    => '0644',                                  
  content => 'dmlc.pw node under puppet.
      work in progress
###############################################
###############################################
###############################################
###############################################', 

}
}

node /^frontend(?:-\d+)?/ { 

file {'/etc/motd':                                          
  ensure  => 'present',                                          
  mode    => '0644',                                  
  content => 'dmlc.pw node under puppet.
      work in progress
###############################################
###############################################
###############################################
###############################################
  ',           

}
  docker::run { 'frontend':
     image     => 'dmalicia/nodejs-simple',
     ports     => ['80:3000'],
     expose    => ['80'],
  }
}
