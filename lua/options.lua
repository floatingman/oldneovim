local o = vim.opt
local wo = vim.wo
local fn = vim.fn

vim.cmd "set inccommand=split"
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50" -- block in normal and beam cursor in insert mode
o.updatetime = 300 -- faster completion
o.timeoutlen = 400 -- time to wait for a mapped sequence to complete (in milliseconds)
o.ttimeoutlen = 0 -- Time in milliseconds to wait for a key code sequence to complete
o.backup = false                         -- creates a backup file
o.swapfile = true                       -- creates a swapfile
o.dir = fn.stdpath("data") .. "/swp" -- swap file directory
o.undofile = true                        -- enable persistent undo
o.undodir = fn.stdpath("data") .. "/undodir" -- set undo directory
o.history = 500                         -- Use the 'history' option to set the number of lines from command mode that are remembered.
o.clipboard = "unnamedplus"              -- allows neovim to access the system clipboard
o.cmdheight = 1                          -- more space in the neovim command line for displaying messages
o.conceallevel = 0                       -- so that `` is visible in markdown files
o.fileencoding = "utf-8"                 -- the encoding written to a file
o.hlsearch = true                        -- highlight all matches on previous search pattern
o.ignorecase = true                      -- ignore case in search patterns
o.foldenable = false -- disable folding; enable with zi
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.mouse = "a"                            -- allow the mouse to be used in neovim
o.pumheight = 10                         -- pop up menu height
o.showmode = false                       -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 2                        -- always show tabs
o.laststatus = 2 -- The value of this option influences when the last window will have a status line (2 always)
o.smartcase = true                       -- smart case
o.smartindent = true                     -- make indenting smarter again
o.splitbelow = true                      -- force all horizontal splits to go below current window
o.splitright = true                      -- force all vertical splits to go to the right of current window
o.termguicolors = true                   -- set term gui colors (most terminals support this)
o.writebackup = false                    -- if a file is being edited by another program (or was written to file while editing with another program)it is not allowed to be edited
o.expandtab = true                       -- convert tabs to spaces
o.shiftwidth = 2                         -- the number of spaces inserted for each indentation
o.tabstop = 2                            -- insert 2 spaces for a tab
o.cursorline = true                      -- highlight the current line
o.number = true                          -- set numbered lines
o.relativenumber = true                 -- set relative numbered lines
o.numberwidth = 4                        -- set number column width to 2 {default 4}
o.signcolumn = "yes"                      -- always show the sign columnotherwise it would shift the text each time
o.wrap = false                           -- display lines as one long line
o.scrolloff = 3                          -- Minimal number of screen lines to keep above and below the cursor
o.sidescrolloff = 5                     -- The minimal number of columns to scroll horizontally
o.guifont = "monospace:h17"              -- the font used in graphical neovim applications
o.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
o.shortmess = o.shortmess + "c" -- prevent "pattern not found" messages
wo.colorcolumn = "99999"
o.wildmode = "full"
o.lazyredraw = true -- do not redraw screen while running macros
o.grepprg = "rg --hidden --vimgrep --smart-case --" -- use rg instead of grep
o.completeopt = {"menu", "menuone", "noselect", "noinsert"} -- A comma separated list of options for Insert mode completion
o.wildignorecase = true -- When set case is ignored when completing file names and directories
o.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]]
