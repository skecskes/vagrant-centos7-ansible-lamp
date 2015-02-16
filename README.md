Vagrant Centos 7 lamp using Ansible playbook
=========================================

This personal development VM with Ansible provisioning is rather knowledge base. I created this VM in order to have a proper php testbed for my php applications. After vagrant up, the main url will welcome you with phpinfo(). I hope you will enjoy this VM and I always accept recommendations and requests.

## Guest OS

I am using CentOS 7 image from [somewhere](https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box) (thanks)

## Prerequisites / Requirements

- virtualbox
- vagrant with guest additions (vagrant plugin install vagrant-vbguest)

## Includes

- Apache 2.4.6
- php 5.6.5
- mySql MariaDB 5.5.41
- phpinfo() on http://10.0.0.10
- phpmyadmin on http://10.0.0.10:9000
