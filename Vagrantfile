# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider :virtualbox do |provider, override|
    provider.gui = true
    provider.memory = 1024
    provider.cpus = 4
    override.vm.network "private_network", ip: "192.168.50.4",
      virtualbox__intnet: true
    provider.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.provider :digital_ocean do |provider, override|
  
    override.ssh.private_key_path = '~/.ssh/id_rsa'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"


    # override.hostmanager.enabled = true
    # override.hostmanager.manage_host = true
    # override.hostmanager.ignore_private_ip = false
    # override.hostmanager.include_offline = true
    # override.vm.define 'example-box' do |node|
    #   node.vm.hostname = 'example-box-hostname'
    #   node.vm.network :private_network, ip: '104.131.239.234'
    #   node.hostmanager.aliases = %w(example-box.localdomain example-box-alias)
    # end

    

    provider.token = '################################################################'
    provider.image = '14.04 x64'
    provider.region = 'nyc2'
    provider.size = '512mb' # for ex. '8gb'

  end

  config.vm.provision :shell, :inline => 'apt-get install -y puppet-common'
  config.vm.provision :shell, :path => 'install.sh'
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = 'init.pp'
  end
  
  # config.vm.provision :shell, :path => 'clone.sh'

end
