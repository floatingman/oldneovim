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

## Useful non leader bindings

| Mode | key              | binding                                              |
| ---- | ---------------- | ---------------------------------------------------- |
| n    | space            | Leader key                                           |
| v    | ga               | Easyalign                                            |
| n    | gcc              | Toggle line comment                                  |
| n/v  | gc               | Toggle line comment (works with movements like gcip) |
| n    | ⬆ ⬇ ⬅ ➡          | Resize panes                                         |
| i    | \<c-l\>          | Move out of closing bracket                          |
| n    | \<c-h\|j\|k\|l\> | change pane focus (including Tmux panes)             |
| n    | \<leader\>space  | switch to previously opened buffer                   |
| v    | sa               | Add surrounding                                      |
| n    | sd               | Delete surrounding                                   |
| n    | sr               | Replace surrounding                                  |

## Top level leader key bindings

See `./lua/config/which.lua` for details.

| key | cluster                                                |
| --- | ------------------------------------------------------ |
| b   | Buffer management                                      |
| c   | Language specific actions (only in Go, e.g. run tests) |
| f   | File management                                        |
| g   | Git actions                                            |
| h   | Harpoon integration                                    |
| l   | LSP integration                                        |
| m   | Misc stuff                                             |
| s   | Searching                                              |
| t   | Trouble integration                                    |
| w   | Window management                                      |
| x   | Languagetool integration                               |
| y   | YAML integration (only in YAML files)                  |
| z   | Spell bindings                                         |


## Language Servers
### Node
`sudo npm i -g bash-language-server dockerfile-language-server-nodejs yaml-language-server typescript typescript-language-server vscode-langservers-extracted`
### GO
`go get golang.org/x/tools/gopls` (optional `golangci-lint`, `gomodifytags`, `gorename`)
### Terraform
[terraform-ls](https://github.com/hashicorp/terraform-ls)
### Latex
[texlab](https://github.com/latex-lsp/texlab) and [tectonic](https://github.com/tectonic-typesetting/tectonic)
### Lua
[lua-language-server](https://github.com/sumneko/lua-language-server)
### Grammer
For advanced spell checks via [vim-grammarous](https://github.com/rhysd/vim-grammarous) Java 8+ is required
