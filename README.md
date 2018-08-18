# GoDevOps

Este projeto tem por objetivo montar um ambiente com melhores práticas DevOps. 

Nesta primeira parte vamos utilizar as ferramentas Vagrant e Puppet para prover de forma automática VM,s com aplicação WEB rodando no Tomcat7. 
 
Vou usar o Linux  Ubuntu como sistema operacional, os mesmo arquivos foram testados no Windows obtendo o mesmo resulta. Nesta primeira parte estamos utilizando Vagrant e Puppet para padronizar a entrega de VM's. As ferramentas utilizadas foram escolhidas por melhor se adaptarem ao ambiente computacional disponível.  Nos próximos materiais vamos abordar práticas de integração contínua neste ambiente. 


1. Primeiro instalaremos o VirtualBox e o Vagrant:
    ```bash
    $ sudo apt install virtualbox
    $ sudo apt install vagrant
    ```

2. Logo após a instalação iremos adicionar a imagem de ‘Template’ necessária para iniciar as máquinas virtuais.O Vagrant trata estas imagens como ‘BOX’, no nosso caso as imagens são disponibilizadas pelo próprio Vagrant, sendo ela de um Linux Ubuntu 12.04 32 Bits:
    ```bash
    $ sudo vagrant box add hashicorp/precise32
    ```
    
3. Agora vamos baixar os arquivos de configuraçao do GitHub e iniciar o Vagrant:

    ```bash
    $ git clone https://github.com/rvneves/GoDevOps.git
    $ cd GoDevOps
    $ sudo vagrant provision mserv
    $ sudo vagrant up mserv
    ```

    
    
