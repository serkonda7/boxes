# boxes
This repo contains ansible playbooks to automatically provision various systems.
For the dotfiles deployed during this process, see https://github.com/serkonda7/dotfiles.


## Prerequisites
```sh
git clone https://github.com/serkonda7/boxes ~/Documents/boxes
cd ~/Documents/boxes
yay -Sy && yay -S ansible-core
ansible-galaxy collection install -r requirements.yml
```


## Process: Provision a new local machine
```sh
ansible-playbook playbook.yml
```
