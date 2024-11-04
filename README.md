# boxes
Repo for my ansible playbooks and dotfiles.

**Useful links**
- Ansible Docs: https://docs.ansible.com/ansible/latest/collections/index.html
- dotter Wiki: https://github.com/SuperCuber/dotter/wiki/Setup-and-Configuration


## Provisioning
### Prerequisites
```sh
yay -Sy && yay -S ansible-core --noconfirm
git clone https://github.com/serkonda7/boxes ~/boxes
cd ~/boxes
ansible-galaxy collection install -r playbooks/requirements.yml
```


### Provision a new machine
```sh
ansible-playbook playbooks/eos-vm.yml
```

The following playbooks are defined:
- `eos-vm`: EndeavourOS Virtual Machine starting from a offline install


#### Tagged ad-hoc roles
```sh
ansible-playbook playbooks/ad-hoc.yml --tags "foo,bar"
```

The following ad-hoc roles are defined:
|              |                                 |
| ------------ | ------------------------------- |
| `ansible`    | Ansible Development environment |
| `bcsfe`      | Battle Cats Save File Editor    |
| `dotfiles`   | Dotfile management              |
| `lts_kernel` | Switch to LTS Linux             |
| `typst`      | Typst language and tooling      |
| `vscode`     | Code-OSS and common extensions  |
| `zsh`        | ZSH and antidote                |


### Deploy dotfiles only
```sh
ansible-playbook playbooks/ad-hoc.yml --tags dotfiles
```


## Development
### Check file linting
```sh
ansible-lint
```


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
