"***********************************************************************************
"   __  ___         _               ____       __   __    _
"  /  |/  / ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / /|_/ / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/  /_/  \_,_/ /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                                                                 /___/
"
"***********************************************************************************

" Colorscheme
if !has('gui_running')
  set t_Co=256
endif
set termguicolors
colorscheme molokai

" Longer leader key timout
set timeout timeoutlen=1500

augroup specify_filetype
  autocmd!
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

" Limit line length for text files
autocmd FileType text,markdown,tex setlocal textwidth=180

" Don't automatically collapse markdown
set conceallevel=0

" designed for vim 8+
let skip_defaults_vim=1

" Enable mouse scroll
set mouse=a

" Don't show the mode in the command line
set noshowmode

" Automatically reread the file if it changes outside of vim
set autoread

" Allow a new buffer to be created without saving the current one
set hidden

" Statusline config
set statusline+=%F
set cmdheight=1

" Tab Settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set shiftround

" Enable syntax hightlighting
syntax on

" Print syntax highlighting.
set printoptions+=syntax:y

" Matching braces/tags
set showmatch

" Keep a backup file.
"set backup

" Save undo tree.
"set undofile

" Do not back up temporary files.
set backupskip=/tmp/*,/private/tmp/*"

" Store backup files in one place.
set backupdir^=$HOME/.config/nvim//storage/backups//

" Store swap files in one place.
set dir^=$HOME/.config/nvim//storage/swaps//

" Store undo files in one place.
set undodir^=$HOME/.config/nvim/storage/undos//

" line wrapping
set wrap

" Turns on detection for fyletypes, indentation files and plugin files
filetype plugin indent on

" Split window appears right the current one.
set splitright

" Make sure compatible mode is disabled
set nocompatible

" Share yank buffer with system clipboard
set clipboard=unnamedplus

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" Show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif

" Jump to the last known position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Relative line numbers
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Insert timestamp
map <leader>n :r!date<cr>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Check file in shellcheck:
map <leader>c :!clear && shellcheck %<CR>

" Copy selected text to system clipboard (requires gvim/nvim/vim-xll installed):
"  vnoremap <C-c> "+y
" map <C-p> "+P

" Enable Goyo by default for mutt writing

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
autocmd BufWritePost ~/.bmdirs,~/.bmfiles !shortcuts

" Update binds when sxhkdrc is updated.
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" syntax helpers

au bufnewfile,bufRead *.bash* set ft=sh
au bufnewfile,bufRead *.profile set filetype=sh
au bufnewfile,bufRead *.crontab set filetype=crontab
au bufnewfile,bufRead *ssh/config set filetype=sshconfig
au bufnewfile,bufRead *gitconfig set filetype=gitconfig
au bufnewfile,bufread /tmp/psql.edit.* set syntax=sql

" let status and other commands see the type of the current file
au bufnewfile,bufread * call system("echo " . &filetype . " > $HOME/.vim/curfiletype")
au vimleavepre * call system("echo > $HOME/.vim/curfiletype" )

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Restart yabai everytime config is updated
autocmd BufWritePost ~/.confg/yabai/yabairc !brew services restart yabai

" Restart skhd everytime config is updated
autocmd BufWritePost ~/.skhdrc !brew services restart skhd


" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red

" Flag tabs instead of spaces
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Flag Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" enable omni-completion
set omnifunc=syntaxcomplete#Complete

" autocmd FileType python set omnifunc=pythoncomplete#Complete

" Set syntax highlighting
let python_highlight_all=1

" Pydiction setup
let g:pydiction_location = '/home/dnewman/.config/nvim/plugged/Pydiction/complete-dict'

" vim-fugitive
map <leader>gs :Gstatus<cr>
map <leader>gc :Gcommit<cr>
map <leader>gl :Glog<cr>

" config helpers
command! InitEdit :e ~/.config/nvim/init.vim
command! InitSource :source ~/.config/nvim/init.vim

" Rainbows!
let g:rainbow_active = 1


" Write a file with sudo (w!!)
cmap w!! W !sudo tee % >/dev/null

" Redraw syntax highlighting from start of file.
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

" Search

"" Highlight search results
set hlsearch
set showmatch

"" Ignore case in searches, but smartly
set ignorecase
set smartcase


" Window switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" GnuPG Extensions
" Tell the GnuPG plugin to armor new files
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files
let g:GPGPreferSign=1

augroup GnuPGExtra
  " Set extra file options.
  autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()
  " Automatically close unmodified files after inactivity.
  autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
  " set updatetime to 1 minute.
  set updatetime=60000
  " Fold at markers.
  set foldmethod=marker
  " Automatically close all folds.
  set foldclose=all
  " Only open folds with insert commands.
  set foldopen=insert
endfunction

""""""""
" Mutt "
""""""""

" Set the filetype on neomutt buffers
au BufRead /tmp/*mutt* setfiletype mail

" Delete quoted signatures.
au BufRead /tmp/*mutt* normal :g/^\(> \)--\s*$/,/^$/-1d/^$


" Align stuff
vmap AA :Align =<CR>
vmap Ap :Align =><CR>
vmap Aa :Align :<CR>
vmap A, :Align ,<CR>

" Lusty juggler
nmap <silent> <leader>d :LustyJuggler<CR>

" Buffer
nmap <silent> <leader>q :Bclose<CR>

" remove training wheels
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

