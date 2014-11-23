DigitalOceanBox
===============
Installing the DigitalOcean: Vagrant Integration Plugin
To install the plugin, you have to follow two quick steps. First, run the command of installing the plugin:

`` vagrant plugin install vagrant-digitalocean ``

Followed by the command to add the new box to Vagrant (remember what boxes are from the previous articles?):

`` vagrant box add digital_ocean https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box ``

## VagrantUP
`` vagrant up --provider=digital_ocean ``
