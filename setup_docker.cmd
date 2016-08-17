@echo off

rem For docker-machine
set MACHINE_STORAGE_PATH=z:\virtual_machines\docker

rem For docker command line utility
rem Assumption: Docker's boot2docker virtual machine has the name 'default' and the IP address 192.168.99.102'.
rem If this is not the case: Change IP address here and possibly run 'docker-machine regenerate-certs'.
set DOCKER_HOST=tcp://192.168.99.100:2376
set DOCKER_TLS_VERIFY=1
set DOCKER_CERT_PATH=z:\virtual_machines\docker\machines\default
rem Note: Kitematic still requires the certificates at path 'c:\users\<User Name>\.docker\machine\machines\default'!