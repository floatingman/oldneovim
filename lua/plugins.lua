local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_config(name)
  return string.format("require(\"config/%s\")", name)
end

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    "git", "clone", "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  execute "packadd packer.nvim"
end

-- initialize and configure packer
local packer = require("packer")
packer.init {
  enable = true, -- enable profilling via :PackerCompile profile=true
  threshold = 0 -- the amount in ms that a plugins load time must be over for it to be included in the profile
}
local use = packer.use
packer.reset()

-- actual plugins list
use "wbthomason/packer.nvim"

use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
    config = get_config("telescope")
}
use {"jvgrootveld/telescope-zoxide"}
use {"crispgm/telescope-heading.nvim"}
use {"nvim-telescope/telescope-symbols.nvim"}
use {"nvim-telescope/telescope-file-browser.nvim"}
use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}


use {"kyazdani42/nvim-tree.lua", config = get_config("nvim-tree")}

use {
    "nvim-lualine/lualine.nvim",
    config = get_config("lualine"),
    event = "VimEnter",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
}


use {"windwp/nvim-autopairs", config = get_config("autopairs")}

use {
    "nvim-treesitter/nvim-treesitter",
    config = get_config("treesitter"),
    run = ":TSUpdate"
}

use "nvim-treesitter/nvim-treesitter-textobjects"

use {
    "hrsh7th/nvim-cmp",
    requires = {
        {"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"},
        {"hrsh7th/cmp-cmdline"}, {"hrsh7th/cmp-vsnip"},
        {"f3fora/cmp-spell", {"hrsh7th/cmp-calc"}}
    },
    config = get_config("cmp")
}

use {"neovim/nvim-lspconfig", config = get_config("lsp")}

use {"ray-x/lsp_signature.nvim", requires = {{"neovim/nvim-lspconfig"}}}

use {"onsails/lspkind-nvim", requires = {{"famiu/bufdelete.nvim"}}}

use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = [[require("config/indent-blankline")]]
}

use {
    "akinsho/nvim-toggleterm.lua",
    keys = {"<C-y>", "<leader>fl", "<leader>gt"},
    config = get_config("toggleterm")
}

use {"folke/which-key.nvim", config = get_config("which")}

use "junegunn/vim-easy-align" -- no lua alternative

use {"rhysd/vim-grammarous", cmd = "GrammarousCheck"}

use {"cuducos/yaml.nvim", ft = {"yaml"}}
use {"ray-x/go.nvim", config = get_config("go")}

