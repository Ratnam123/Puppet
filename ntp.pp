package {'ntp':
  ensure  => latest,
}

file {'/etc/ntp.conf':
  ensure  => present,
  content => 'server 1.centos.poo.ntp.org iburst',	
}

service {'ntpd':
  ensure    => running,
#  subscribe => File['/etc/ntp.conf'] 
}	

