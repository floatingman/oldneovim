"***********************************************************************************
"   __  ___         _               ____       __   __    _
"  /  |/  / ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / /|_/ / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/  /_/  \_,_/ /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                                                                 /___/
"
"***********************************************************************************
" Colorscheme

set termguicolors

" make backspace delete everywhere
"
set backspace=indent,eol,start

set wildmode=longest:full,full

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

set nojoinspaces

" Limit line length for text files
autocmd FileType text,markdown,tex setlocal textwidth=180

" Don't automatically collapse markdown
set conceallevel=0

" Enable mouse scroll for certain modes (see :help mouse)
set mouse=nicr

" Automatically reread the file if it changes outside of vim
set autoread

" Allow a new buffer to be created without saving the current one
set hidden

" Always show the signcolumn
set signcolumn=yes:2

" Color the column at line 80 to help with writing clean code
set colorcolumn=80

" Tab Settings
set expandtab
set tabstop=4
set shiftwidth=4


set list
set listchars=tab:▸\ ,trail:·

" Keep a backup file.
set backup

" Save undo tree.
set undofile

" Set Terminal Title
set title

set exrc

set confirm

" Do not back up temporary files.
set backupskip=/tmp/*,/private/tmp/*"

" Store backup files in one place.
set backupdir=~/.local/share/nvim/backup//

" line wrapping
set nowrap

" Split window appears right the current one.
set splitright

" Share yank buffer with system clipboard
set clipboard=unnamedplus

" Show next 3 lines while scrolling.
set scrolloff=8

" Show next 5 columns while side-scrolling.
set sidescrolloff=8

" Relative line numbers
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" When shortcut files are updated, renew bash and ranger configs with new material:
autocmd BufWritePost bm-files,bm-dirs !shortcuts

" Update dwmblocks when config.h is edited
autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }

" syntax helpers
au bufnewfile,bufRead *.bash* set ft=sh
au bufnewfile,bufRead *.profile set filetype=sh
au bufnewfile,bufRead *.crontab set filetype=crontab
au bufnewfile,bufRead *ssh/config set filetype=sshconfig
au bufnewfile,bufRead *gitconfig set filetype=gitconfig
au bufnewfile,bufread /tmp/psql.edit.* set syntax=sql

" let status and other commands see the type of the current file
au bufnewfile,bufread * call system("echo " . &filetype . " > $HOME/.config/nvim/curfiletype")
au vimleavepre * call system("echo > $HOME/.config/nvim/curfiletype" )

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufRead,BufNewFile xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %

" Restart yabai everytime config is updated
autocmd BufWritePost ~/.confg/yabai/yabairc !brew services restart yabai

" Restart skhd everytime config is updated
autocmd BufWritePost skhdrc !brew services restart skhd

" Search
"" Ignore case in searches, but smartly
set ignorecase
set smartcase

set updatetime=300 " Reduces time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files

" ignore these suffixes in file completion
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" when vim exits, preserve clipboard data
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" drop comment symbols when joining lines
set formatoptions+=j
