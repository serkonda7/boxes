# boxes
## Prerequisites
```sh
git clone https://github.com/serkonda7/boxes ~/Documents/boxes
cd ~/Documents/boxes
yay -S ansible-core
ansible-galaxy collection install -r requirements.yml
```

## Process: Provision a new local machine
```sh
ansible-playbook playbook.yml
```
