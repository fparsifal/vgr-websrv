VAGRANTFILE_API_VERSION = "2"

path = "#{File.dirname(__FILE__)}"

require 'yaml'
require path + '/vgr-bin/homestead.rb'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    Homestead.configure(config, YAML::load(File.read(path + '/vgr-config/Homestead.yaml')))
end