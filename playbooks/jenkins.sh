#!/bin/bash

ansible-playbook /etc/ansible/playbooks/create.yml
sleep 30
ansible-playbook /etc/ansible/playbooks/ready-yet.yml
ansible-playbook /etc/ansible/playbooks/bootstrap.yml 
ansible-playbook /etc/ansible/playbooks/install-jenkins-master.yml
ansible-playbook /etc/ansible/playbooks/install-jenkins-slave.yml
ansible-playbook /etc/ansible/playbooks/ssh-slaves.yml
