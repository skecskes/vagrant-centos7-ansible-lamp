VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "centos-7"
    config.vm.box_url = "https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box"
    config.vm.hostname = "vagrantbox"

    config.vm.network :forwarded_port, host: 80, guest: 80, auto_correct: true # website
    config.vm.network :forwarded_port, guest: 443, host: 443, auto_correct: true # ssl
    config.vm.network :forwarded_port, guest: 3306, host: 3306, auto_correct: true # mysql
    config.vm.network :forwarded_port, guest: 9000, host: 9000, auto_correct: true # phpmyadmin
    config.vm.network :private_network, ip: "10.0.0.10"
    config.vm.synced_folder "./", "/var/www/html"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ['modifyvm', :id, '--memory', '1024']
        vb.customize ["modifyvm", :id, "--cpus", "1"]
        vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
    end

    config.vm.provision :shell, path: "vagrant.sh"

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
        ansible.sudo = true
        #ansible.inventory_path = "playbooks"
    end
    config.vm.provision :shell, path: "phpmyadmin.sh"

end
