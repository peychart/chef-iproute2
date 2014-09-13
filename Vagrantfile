# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu14.04-chef"
  config.vm.box_url = "http://repository.srv.gov.pf/box/ubuntu14.04-chef-vb.box"
  config.vm.hostname = "aggregator.dev.gov.pf"

  # Personalisation du provider : virtualbox
  config.vm.provider "virtualbox" do |v|
    v.gui = true
    v.name = "aggregator"
    v.memory = 512
    v.cpus = 1
  end

  # Configuration reseau:
  config.vm.network "private_network", ip: "192.168.7.2"

  # chef-solo installation:
  config.vm.provision :shell, inline: "export DEBIAN_FRONTEND=noninteractive; apt-get install chef -y"

  # Provisionner un serveur aggregator avec chef-solo:
  config.vm.provision "chef_solo" do |chef|
    chef.custom_config_path = "Vagrantfile.chef"
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path = "roles"
    chef.data_bags_path=["data_bags"]
    chef.encrypted_data_bag_secret_key_path = "secret_key"

    #chef.add_role("aggregator")

   #chef.add_recipe "apt::default"

   # avant, modifier les attributs par defaut:
    chef.json = {
     "iproute2" => {
       "start" => [ \
         "ip route add default scope global",
         "nexthop via 10.0.2.3 weight 3",
         "nexthop via 10.0.2.4 weight 3",
         "nexthop via 10.0.2.5 weight 3"
       ],
       "stop" => [ "ip route add default dev eth0" ]
     }
    }

    chef.add_recipe "iproute2::default"

  end

end
