class Homestead
  def Homestead.configure(config, settings)
    # Configure The Box
    config.vm.box = "hashicorp/precise32"
    config.vm.hostname = "WebSrv"

    # Configure A Private Network IP
    config.vm.network :private_network, ip: settings["ip"] ||= "192.168.10.10"

    # Configure A Few VirtualBox Settings
    config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", settings["memory"] ||= "2048"]
      vb.customize ["modifyvm", :id, "--cpus", settings["cpus"] ||= "1"]
      vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.name = "WebServer"
    end

    # Configure Port Forwarding To The Box
    config.vm.network "forwarded_port", guest: 80,    host: 8080

    # Each for all commands present in to Homestead.yaml
    settings["command"].each do |cmd|
      config.vm.provision "shell" do |s|
        s.inline = cmd
      end
    end
  end
end