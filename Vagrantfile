Vagrant.configure('2') do |config|
  config.vm.box = 'chef/centos-7.0'

  if Vagrant.has_plugin? 'vagrant-cachier'
    config.cache.scope = :box
    config.cache.enable :yum
  end

  config.vm.provider 'virtualbox' do |vb|
    vb.customize ['modifyvm', :id, '--memory', '512']
  end

  config.vm.define 'lb', :primary => true do |lb|
    lb.vm.hostname = 'lb'
    lb.vm.network 'forwarded_port', guest: 80,   host: 8081
    lb.vm.network 'forwarded_port', guest: 8888, host: 8888
    lb.vm.network 'forwarded_port', guest: 9200, host: 9200
    lb.vm.network 'private_network', ip: '10.16.0.10'

    lb.vm.provision :salt do |salt|
      salt.install_master = true

      salt.minion_config = 'etc/minion'
      salt.master_config = 'etc/master'

      salt.install_type = 'git'
      salt.install_args = 'v2015.5.2'

      salt.verbose = true
      salt.run_highstate = true

      salt.master_key = 'etc/keys/lb.pem'
      salt.master_pub = 'etc/keys/lb.pub'

      salt.minion_key = 'etc/keys/lb.pem'
      salt.minion_pub = 'etc/keys/lb.pub'

      salt.seed_master = {
        :app1 => 'etc/keys/app1.pub',
        :app2 => 'etc/keys/app2.pub',
        :es1 => 'etc/keys/es1.pub',
        :es2 => 'etc/keys/es2.pub',
        :lb => 'etc/keys/lb.pub'
      }
    end
  end

  def salt_minion!(config)
    config.vm.provision :salt do |salt|
      salt.minion_config = 'etc/minion'
      salt.run_highstate = true
      salt.install_type = 'git'
      salt.install_args = 'v2015.5.2'
      salt.verbose = true

      salt.minion_key = "etc/keys/#{config.vm.hostname}.pem"
      salt.minion_pub = "etc/keys/#{config.vm.hostname}.pub"
    end
  end

  config.vm.define 'es1' do |es|
    es.vm.hostname = 'es1'
    es.vm.network 'private_network', ip: '10.16.0.9'

    salt_minion! es
  end

  config.vm.define 'es2' do |es|
    es.vm.hostname = 'es2'
    es.vm.network 'private_network', ip: '10.16.0.11'

    salt_minion! es
  end

  config.vm.define 'app1' do |app|
    app.vm.hostname = 'app1'
    app.vm.network 'forwarded_port', guest: 8080, host: 8082
    app.vm.network 'private_network', ip: '10.16.0.13'

    salt_minion! app
  end

  config.vm.define 'app2' do |app|
    app.vm.hostname = 'app2'
    app.vm.network 'forwarded_port', guest: 8080, host: 8083
    app.vm.network 'private_network', ip: '10.16.0.12'

    salt_minion! app
  end

end
