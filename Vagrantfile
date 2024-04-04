# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian12"

  # Configuration for the development VM
  config.vm.define "dev" do |dev|
    dev.vm.network "private_network", ip: "192.168.56.101"
    dev.vm.network "forwarded_port", guest: 8080, host: 8081  # Dev uses 8081 on the host
    dev.vm.network "forwarded_port", guest: 443, host: 4443  # Dev uses 4443 on the host
    # Add your provisioning configuration for dev
  end

  # Configuration for the production VM
  config.vm.define "prod" do |prod|
    prod.vm.network "private_network", ip: "192.168.56.102"
    prod.vm.network "forwarded_port", guest: 8080, host: 8082  # Prod uses 8082 on the host
    prod.vm.network "forwarded_port", guest: 443, host: 4444  # Prod uses 4444 on the host
    # Add your provisioning configuration for prod
  end
end

