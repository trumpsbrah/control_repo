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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDoQwqYJ2BgdMhFEH6n3WEE46zbB8OVar9kAHGe3GJOs25yWDUnmwFzq9p1ARyUb2veEVocU6o87M1RBajIO5/ndkKuQuYNr669pKS0JLpq1+OYniPok3Q+d3XUralYy3ZkcNPLFE0pMLXxPHIxfNQZESUn9PUKhv2MV+mafhqk3W0PgW0aqREw3BJ8cxajHhanaem03L6VHoY5SryfBduJWJ+TR9PJl5rHVcErLOZmeVcsLTKQazDdl9wexQqMozYwZB9VrJZN5kIsROWjQ5garDeUOQ9tXYIVqQxY/+olWkX2nKMzfg4zqFzME8sbAm4hUe2FCcebNGUGDASTakO3',
	}  
}
