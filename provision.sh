#!/usr/bin/env bash

yum install -y epel-release
yum install -y sshpass
yum install -y gcc
yum install -y python-pip python-tools python-devel
pip install ansible

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml -v

