#!/bin/bash

# Define the path to your Ansible playbooks
PLAYBOOK_DIR="/home/gavin/project2.2/logging-server"

# Playbook 1
echo "Running playbook1.yml..."
ansible-playbook "$PLAYBOOK_DIR/syslog_server.yml" --extra-vars "ansible_sudo_pass=Lego456!"

# Playbook 2
echo "Running playbook2.yml..."
ansible-playbook "$PLAYBOOK_DIR/syslog_client.yml" --extra-vars "ansible_sudo_pass=Lego456!"

echo "All playbooks executed successfully."

