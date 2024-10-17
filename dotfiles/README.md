# dotfiles
Related links
- dotter Wiki: https://github.com/SuperCuber/dotter/wiki/Setup-and-Configuration


## Process: Track new file
**Prerequisites**
- `dotter` >= 0.13.3

**Execution**
1. `mv ~/<src_path> ~/.dotfiles/<dest_path>`
2. Add entry to `global.toml`, e.g.
   ```toml
    [<package>.files]
    # [...]
    dotfile = "~/.file"
    "folder/config" = "~/.local/share/folder/my_config_file"
   ```
3. Check package is present in `default.toml`
4. `dotter deploy`


## Process: Initialize local dotfiles from repository
> [!TIP]
> Use https://github.com/serkonda7/boxes instead of manual execution.

**Prerequisites**
- `git` >= 2.46.2
- `dotter` >= 0.13.3

**Execution**
1. `git clone https://github.com/serkonda7/dotfiles ~/.dotfiles`
2. `cd ~/.dotfiles`
3. `echo -e 'includes = [".dotter/default.toml"]\npackages = ["default"]' > .dotter/local.toml`
4. `dotter deploy --force`
