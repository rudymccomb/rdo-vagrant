VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos65"
  config.vm.hostname = "rdo.localdomain"
  config.vm.network "private_network", ip: "192.168.33.10"
   config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4048"]
   end
   config.vm.provision :shell, :path => 'bootstrap.sh', :args => ENV['repo'] || "releases/latest"
end
