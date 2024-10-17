# boxes
Repo for my ansible playbooks and dotfiles.

**Useful links**
- Ansible Docs: https://docs.ansible.com/ansible/latest/collections/index.html
- dotter Wiki: https://github.com/SuperCuber/dotter/wiki/Setup-and-Configuration


## Provisioning
### Prerequisites
```sh
yay -Sy && yay -S ansible-core
git clone https://github.com/serkonda7/boxes ~/boxes
```


### Provision a new machine
```sh
ansible-galaxy collection install -r ansible/requirements.yml
ansible-playbook ansible/playbook.yml
```


### Deploy dotfiles only
```sh
ansible-playbook ansible/playbook.yml --tags dotfiles
```


## Development
### Track a new dotfile
1. `mv ~/<src> ~/boxes/dotfiles/<package>/<dest>`
2. Add entry to `global.toml`, e.g.
   ```toml
    [<package>.files]
    dotfile = "~/.file"
    "folder/config" = "~/.local/share/folder/my_config_file"
   ```
3. Check package is present in `default.toml`
4. `dotter deploy`
