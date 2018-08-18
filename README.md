# GoDevOps

Este projeto tem por objetivo montar um ambiente com melhores práticas DevOps. 

Nesta primeira parte vamos utilizar as ferramentas Vagrant e Puppet para prover de forma automática VM,s com aplicação WEB rodando no Tomcat7. 
 

Use the following steps to run the application locally:

1. Primeiro instalaremos o VirtualBox e o Vagrant:
    ```bash
    $ sudo apt install virtualbox
    $ sudo apt install vagrant
    ```

2. Logo apos a instalacao iremos adicionar a imagem de Template necessaria para iniciar as maquinas virtuais.O Vagrant trata estas imagens como BOX, no nosso caso as imagens sao disponibilizadas pelo proprio Vagrant, sendo ela de um Linux Ubuntu 12.04 32 Bits:
    ```bash
    $ sudo vagrant box add hashicorp/precise32
    ```
    
3. Agora vamos baixar os arquivos de configuraçao do GitHub e iniciar o Vagrant:

    ```bash
    $ git clone https://github.com/rvneves/GoDevOps.git
    ```
    ```bash
    $ cd GoDevOps
    ```
    ```bash
    $ sudo vagrant provision mserv
    ```
    ```
    ```bash
    $ sudo vagrant up mserv
    ```
    
