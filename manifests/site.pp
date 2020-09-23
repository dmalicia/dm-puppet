node default { } 
node /^monitoring(?:-\d+)?/ { 
    include promgrafana 
}

node /^frontend(?:-\d+)?/ { 
  include frontend
  docker::run { 'frontend':
     image     => 'dmalicia/nodejs-simple',
     ports     => ['80:3000'],
     expose    => ['80'],
  }
}

node /^cassandra(?:-\d+)?/ { 
   include cassandra
}

node /^backend(?:-\d+)?/ { 
   include backend
}

