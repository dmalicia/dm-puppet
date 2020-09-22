class promgrafana {
exec { 'apt-update':                   
  command => '/usr/bin/apt-get update'
}
exec { 'apt docker-compose': 
  command => '/usr/bin/apt-get install docker-compose'
}
exec { 'git clone':                    
  command => '/usr/bin/git clone https://github.com/Einsteinish/Docker-Compose-Prometheus-and-Grafana.git /usr/local/share/DCPG', 
  path    => '/usr/local/share'
}
exec { 'docker compose': 
  command => '/usr/bin/docker-compose -f /usr/local/share/DCPG/docker-compose.yml up -d'
}
}
