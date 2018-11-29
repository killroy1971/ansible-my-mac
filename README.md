#My MacBook (or OSX) setup playbook
Purpose: Configure an OSX MacBook using the homebrew utility.

Dependencies:
* XCode Command Line Utilities

Scripts:
* initial_mac_setup.sh -- Installs homebrew, then ansible

Example Playbook:
This file is in the playbooks directory.

```- hosts: localhost
```  vars:
```    homebrew_install: false
```    homebrew_update: false
```  roles:
```    - ansible-my-mac

Usage:
1. Create an Ansilbe directory off your home directory: mkdir -p $HOME/ansible/roles
2. Clone this repository into $HOME/ansible/roles/ansible-my-mac
3. Copy the initial_mac_setup.sh file to your home directory.
4. Make this scrip executable: chmod +x initial_mac_setup.sh
5. Execute this script: $HOME/initial_mac_setup.sh
- Hopefully the XCode command line utilities will install, this may use a different process in 10.14.
6. Now that Homebrew and Ansible are installed, copy the playbook/ansible-my-mac.yml to your $HOME/ansible directory.
7. Edit the homebrew and casks lists in roles/ansible-my-mac/defaults.yml
8. Execute the playbook: ansible-playbook ansible-my-mac.yml

Note:
On OSX, the ansible.cfg file is located in your home diretctory: ~/.ansible.cfg, and 
the ansible directory is also located in your home directory: ~/ansible/.

