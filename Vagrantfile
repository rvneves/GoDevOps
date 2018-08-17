VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.box = "hashicorp/precise32"


config.vm.define :mserv do |mserv_config|
mserv_config.vm.hostname = "mserv"
mserv_config.vm.network :private_network, ip: "192.168.33.110"
mserv_config.vm.provision "puppet" do |puppet|
puppet.manifest_file = "mserv.pp"
end

config.vm.provision :shell, path: "setup.sh"
end
end


