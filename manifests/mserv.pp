exec
{ "apt-update":
command => "/usr/bin/apt-get update"
}
package
{ ["mysql-client","tomcat7","git","maven2","openjdk-6-jdk"]:
ensure  => installed,
require => Exec["apt-update"],
}

