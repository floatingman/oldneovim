# NeoVim config

## Description
This is my attempt at somewhat usable (for me) [NeoVim](https://neovim.io/) config

This is my attempt at a pure lua configuration

## Cloning
Clone the repo into  `~/.config/nvim`

## Setup
I'm trying out [Packer](https://github.com/wbthomason/packer.nvim) for plugin management. All plugin setup should be handled by Packer.

## Usage
`:PackerCompile` should be ran when making changes to plugin config

`:PackerClean` to remove any unused or removed plugins

`:PackerSync` Cleans, Updates and installs plugins and then runs `:PackerCompile` for you to incorporate new changes.
