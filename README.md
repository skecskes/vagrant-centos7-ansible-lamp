Vagrant Centos 7 lamp using Ansible playbook
=========================================

[![Issues](https://img.shields.io/github/issues/skecskes/vagrant-centos7-ansible-lamp.svg?style=plastic)](https://github.com/skecskes/vagrant-centos7-ansible-lamp/issues) [![Forks](https://img.shields.io/github/forks/skecskes/vagrant-centos7-ansible-lamp.svg?style=plastic)](https://github.com/skecskes/vagrant-centos7-ansible-lamp/network) [![Stars](https://img.shields.io/github/stars/skecskes/vagrant-centos7-ansible-lamp.svg?style=plastic)](https://github.com/skecskes/vagrant-centos7-ansible-lamp/stargazers) [![License](https://img.shields.io/badge/license-GPLv2-blue.svg?style=plastic)](LICENSE)


This personal development VM with Ansible provisioning is **fully working example**. I created this VM in order to have a proper php testbed for my php applications. After vagrant up, the main url will welcome you with phpinfo(). I hope you will enjoy this VM and I always accept recommendations and requests.

## Guest OS

I am using CentOS 7 x64 image from [somewhere](https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box) (thanks)

## Prerequisites / Requirements

- virtualbox
- vagrant with guest additions (vagrant plugin install vagrant-vbguest)

## How to run

1. open terminal
2. $ *cd /var/www*
3. $ *mkdir project*
4. $ *cd project*
5. $ *git clone git@github.com:skecskes/vagrant-centos7-ansible-lamp.git*
6. $ *vagrant up*
7. Enjoy

Your /var/www/project folder will be synced with with vagrants apache root directory.

## Includes

- Apache 2.4.6
- php 5.6.*
- mySql MariaDB 5.5.41 on port 3306
- phpinfo() on http://10.0.0.10
- phpmyadmin on http://10.0.0.10:9000 (latest version is cloned into vagrantbox)
