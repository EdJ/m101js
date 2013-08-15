# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use Berkshelf for managing chef cookbook dependencies.
  config.berkshelf.enabled = true

  # Use default precise32 box.
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Setup network forwarding
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :forwarded_port, guest: 27017, host: 27017

  # Sync the src folder
  config.vm.synced_folder "./src", "/home/vagrant/workspace"

  # Use chef to provision mongo and node
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe("git")
    chef.add_recipe("nodejs::install_from_binary")
    chef.add_recipe("mongodb::10gen_repo")
    chef.add_recipe("mongodb")
  end

  # Run the additional setup steps
  #config.vm.provision :shell, :path => "setup.sh"
end
