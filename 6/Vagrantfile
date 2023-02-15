# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
echo I am provisioning...
date > /etc/vagrant_provisioned_at
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: $script
end

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.host_name = "python" 

  config.vm.provision :shell, :path => "install_py.sh"
  config.vm.provision "file", source: "empty_file", destination: "empty_file"
  
end
