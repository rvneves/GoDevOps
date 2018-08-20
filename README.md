# GoDevOps

Este projeto tem por objetivo montar um ambiente com melhores práticas DevOps. 

Nesta primeira parte vamos utilizar as ferramentas Vagrant e Puppet para prover de forma automática VM,s com aplicação WEB rodando no Tomcat7. 
 
Vou usar o Linux  Ubuntu como sistema operacional, os mesmo arquivos foram testados no Windows obtendo o mesmo resultado. Nesta primeira parte estamos utilizando Vagrant e Puppet para padronizar a entrega de VM's. As ferramentas utilizadas foram escolhidas por melhor se adaptarem ao ambiente computacional disponível.  Nos próximos materiais vamos abordar práticas de integração contínua neste ambiente. 


1. Primeiro instalaremos o VirtualBox e o Vagrant:
    ```bash
    $ sudo apt install virtualbox
    $ sudo apt install vagrant
    ```

2. Logo após a instalação iremos adicionar a imagem de  `Template` necessária para iniciar as máquinas virtuais.O Vagrant trata estas imagens como `BOX`, no nosso caso as imagens são disponibilizadas pelo próprio Vagrant, sendo ela de um Linux Ubuntu 12.04 32 Bits:
    ```bash
    $ sudo vagrant box add hashicorp/precise32
    ```
    
3. Agora vamos baixar os arquivos de configuraçao do GitHub e iniciar o Vagrant.

    ```bash
    $ git clone https://github.com/rvneves/GoDevOps.git
    $ cd GoDevOps
    $ sudo vagrant provision mserv
    $ sudo vagrant up mserv
    ```

    
   4. O script disponibilizado provisiona uma VM com TomCat7, Mave e Git. Nesta primeira parte nosso objetivo é disponibilizarmos uma VM de forma automática com os componentes necessários para rodar nossa aplicação web. Agora vamos fazer o deploy da aplicação de forma manual apenas para teste, no próximo post vamos automatizar o deploy de nossa aplicação.
  
     ```bash
    $ sudo vagrant ssh mserv
    $ git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
    $ cd boxfuse-sample-java-war-hello
    $ mvn package
    $ sudo cp target/hello-1.0.war /var/lib/tomcat7/webapps/
    ```

  5. Nossa aplicação está disponível e pode ser acessada pelo link http://192.168.33.110:8080/hello-1.0/ ou pelo comando abaixo.
  
     ```bash
     $ curl http://192.168.33.110:8080/hello-1.0/
     ```

