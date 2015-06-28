VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'chef/centos-7.0'

  config.vm.network 'forwarded_port', guest: 80, host: 8000

  config.vm.provision :salt do |salt|
    salt.minion_config = "etc/minion"
    salt.run_highstate = true
    salt.install_type = "git"
    salt.install_args = "v2015.5.2"
    salt.verbose = true
  end
end
