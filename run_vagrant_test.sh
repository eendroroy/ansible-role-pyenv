#!/usr/bin/env bash

# First run "vagrant up" then run this file.

ansible --version
ansible-playbook vagrant/vagrant.yml -i vagrant/inventory --syntax-check
ansible-playbook vagrant/vagrant.yml -i vagrant/inventory
