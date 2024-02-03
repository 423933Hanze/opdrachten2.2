#!/bin/bash

# Define the path to your Ansible playbooks
PLAYBOOK_DIR="/home/gavin/project2.2/monitoring-server"

# Playbook 1
echo "Running playbook1.yml..."
ansible-playbook "$PLAYBOOK_DIR/grafana.yml" --extra-vars "ansible_sudo_pass=Lego456!"

# Playbook 2
echo "Running playbook2.yml..."
ansible-playbook "$PLAYBOOK_DIR/node_exporter/node_exporter.yml" --extra-vars "ansible_sudo_pass=Lego456!"

# Playbook 3
echo "Running playbook3.yml..."
ansible-playbook "$PLAYBOOK_DIR/prometheus/main.yml" --extra-vars "ansible_sudo_pass=Lego456!"

# Playbook 4
echo "Running playbook4.yml..."
ansible-playbook "$PLAYBOOK_DIR/datasource.yml" --extra-vars "ansible_sudo_pass=Lego456!"

echo "All playbooks executed successfully."

