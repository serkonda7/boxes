#!/usr/bin/bash

rm -rf "$HOME/.config/Code - OSS"
ln -sf ~/.config/Code "$HOME/.config/Code - OSS"

{{#each kde_cmds}}
  {{this}}
{{/each}}
