#!/usr/bin/env bash
ansible --version
ansible-playbook vagrant/vagrant.yml -i vagrant/inventory --syntax-check
ansible-playbook vagrant/vagrant.yml -i vagrant/inventory

