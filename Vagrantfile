# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "digital_ocean"

  config.vm.provider :digital_ocean do |provider, override|
  
    override.ssh.private_key_path = '~/.ssh/id_rsa'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"

    override.vm.provision :shell, :inline => 'apt-get install -y puppet-common'
    override.vm.provision :shell, :path => 'install.sh'

    # override.hostmanager.enabled = true
    # override.hostmanager.manage_host = true
    # override.hostmanager.ignore_private_ip = false
    # override.hostmanager.include_offline = true
    # override.vm.define 'example-box' do |node|
    #   node.vm.hostname = 'example-box-hostname'
    #   node.vm.network :private_network, ip: '104.131.239.234'
    #   node.hostmanager.aliases = %w(example-box.localdomain example-box-alias)
    # end

    override.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path = 'puppet/modules'
      puppet.manifest_file = 'init.pp'
    end
    
    # override.vm.provision :shell, :path => 'clone.sh'

    provider.token = '################################################################'
    provider.image = '14.04 x64'
    provider.region = 'nyc2'
    provider.size = '512mb' # for ex. '8gb'

  end

end
