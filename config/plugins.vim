"#####################################################################################################
"                           ____     __                     _
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  )
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/
"                                              /____/
"######################################################################################################

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/context-commentstring.vim
source ~/.config/nvim/plugins/dispatch.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/eunuch.vim
source ~/.config/nvim/plugins/exchange.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/heritage.vim
source ~/.config/nvim/plugins/lastplace.vim
source ~/.config/nvim/plugins/lion.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/pasta.vim
source ~/.config/nvim/plugins/peekaboo.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/projectionist.vim
source ~/.config/nvim/plugins/quickscope.vim
source ~/.config/nvim/plugins/repeat.vim
source ~/.config/nvim/plugins/rooter.vim
source ~/.config/nvim/plugins/sayonara.vim
source ~/.config/nvim/plugins/smooth-scroll.vim
source ~/.config/nvim/plugins/splitjoin.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/targets.vim
source ~/.config/nvim/plugins/textobj-xmlattr.vim
source ~/.config/nvim/plugins/unimpaired.vim
source ~/.config/nvim/plugins/vim-test.vim
source ~/.config/nvim/plugins/visual-multi.vim
source ~/.config/nvim/plugins/visual-star-search.vim
source ~/.config/nvim/plugins/which-key.vim
source ~/.config/nvim/plugins/vim-sneak.vim

"" Syntax Highlighting
"Plug 'ap/vim-css-color'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'ekalinin/Dockerfile.vim'
"Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'martinda/Jenkinsfile-vim-syntax'
"Plug 'othree/html5.vim'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'leshill/vim-json'
"Plug 'chr4/nginx.vim'
"Plug 'StanAngeloff/php.vim'
"Plug 'ericpruitt/tmux.vim'


"" Vim Javascript and node
"Plug 'pangloss/vim-javascript'
"Plug 'moll/vim-node'
"" Improved Javacript goto file
"Plug 'hotoo/jsgf.vim'
"" Typescript
"Plug 'leafgarland/typescript-vim'

"" Language Packs
"Plug 'sheerun/vim-polyglot'

"" Git
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
"Plug 'airblade/vim-gitgutter'
"Plug 'junegunn/gv.vim'
"Plug 'jreybert/vimagit'

"" Comments
"Plug 'tpope/vim-commentary'
"Plug 'preservim/nerdcommenter'

"" NERDTree
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""" BufExplorer
""
"Plug 'jlanzarotta/bufexplorer'

"" Tagbar
"Plug 'liuchengxu/vista.vim'

""" Markdown editing
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'
"Plug 'plasticboy/vim-markdown'
"Plug 'honza/vim-snippets'
"Plug 'elzr/vim-json'
"Plug 'godlygeek/tabular'

"" Markdown Preview
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

"" vim-hexcolor
"Plug 'etdev/vim-hexcolor'

"" Custom start page
"Plug 'mhinz/vim-startify'

""" ansible
"Plug 'pearofducks/ansible-vim'

""" Searching
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tacahiroy/ctrlp-funky'
"Plug 'dyng/ctrlsf.vim'
"Plug 'mhinz/vim-grepper'

"" Add DevIcons
"Plug 'ryanoasis/vim-devicons'

"" Emoji support
"Plug 'junegunn/vim-emoji'

""" Indent guides
"Plug 'Yggdroot/indentLine'

"" Auto pairs
"Plug 'Raimondi/delimitMate'

"" Enhanced Diffing
"Plug 'chrisbra/vim-diff-enhanced'

"" Undo
"Plug 'mbbill/undotree'

"" vimwiki
"Plug 'vimwiki/vimwiki'

"" Bufkill plugin to help kill buffers
"Plug 'qpkorr/vim-bufkill'

"" Illuminate plugin to highlight all words matching word under cursor
"Plug 'RRethy/vim-illuminate'

"" Matchup to make % match better
"Plug 'andymass/vim-matchup'

"" UndoQuit to undo hasty quits
"Plug 'AndrewRadev/undoquit.vim'

"" Dirvish for file browsing
"Plug 'justinmk/vim-dirvish'

"" Asterisk for better searching
"Plug 'haya14busa/vim-asterisk'

"" Bufferize for exposing those hidden buffers
"Plug 'AndrewRadev/bufferize.vim'

"" Manipulate lines of text easily
"Plug 't9md/vim-textmanip'

"" Bufferline makes it easy to work with multiple buffers
"Plug 'bling/vim-bufferline'

"" Clever-f helps with motions searching for characters
"Plug 'rhysd/clever-f.vim'

"" Help merge git conflicts
"Plug 'christoomey/vim-conflicted'

"" Delete surrounding function
"Plug 'AndrewRadev/dsf.vim'

"" Easy align plugin
"Plug 'junegunn/vim-easy-align'

"" Easy motion commands for moving around
"Plug 'easymotion/vim-easymotion'

"" Exchange words
"Plug 'tommcdo/vim-exchange'

"" Expand regions
"Plug 'terryma/vim-expand-region'

"" Find and replace words
"Plug 'brooth/far.vim'

"" Highlight multiple words
"Plug 'lfv89/vim-interestingwords'

""Diff two blocks of text
"Plug 'AndrewRadev/linediff.vim'

"" Quickly open quickfix and location
"Plug 'Valloric/ListToggle'

"" Show all matches in a file
"Plug 'mtth/locate.vim'

"" Match html tags
"Plug 'Valloric/MatchTagAlways'

"" Filter quickfix results
"Plug 'sk1418/QFGrep'

"" Put results of iList in a quickfix buffer
"Plug 'romainl/vim-qlist'

"" Edit the quickfix list
"Plug 'stefandtw/quickfix-reflector.vim'

"" Create closing tags in html
"Plug 'tpope/vim-ragtag'

"" Replace text covered by a motion with register
"Plug 'vim-scripts/ReplaceWithRegister'

"" Same as above replace but keep indent of line
"Plug 'vim-scripts/ReplaceWithSameIndentRegister'

"" Changes directory to opened file
"Plug 'airblade/vim-rooter'

"" Scratch buffer for vim
"Plug 'mtth/scratch.vim'

"" Show where marks are added to a buffer
"Plug 'kshenoy/vim-signature'

"" Add the ability to increment/decrement dates
"Plug 'tpope/vim-speeddating'

"" Split between multi-line and single line code
"Plug 'AndrewRadev/splitjoin.vim'

"" Paste code from your terminal without setting paste mode
"Plug 'ConradIrwin/vim-bracketed-paste'

"" Easily change case of words using vim motions
"Plug 'arthurxavierx/vim-caser'

"" Read man pages with power
"Plug 'jez/vim-superman'

"" Work with surroundings in code
"Plug 'tpope/vim-surround'

"" Swap deliminated items in a list
"Plug 'machakann/vim-swap'

"" Adds copying to terminal in vim
"Plug 'christoomey/vim-system-copy'

"" Quickly align text
"Plug 'godlygeek/tabular'

"" Edit matching tags
"Plug 'AndrewRadev/tagalong.vim'

"" Adds a few text objects doing things in vim
"Plug 'wellle/targets.vim'

"" Enhance terminal in vim
"Plug 'wincent/terminus'

"" Create you're own text objects
"Plug 'kana/vim-textobj-user'

"" Add textobjects for entire buffer
"Plug 'kana/vim-textobj-entire'

"" Add a thesaurus
"Plug 'Ron89/thesaurus_query.vim'

"" Plugin to aid in completeing text in tmux sessions
"Plug 'wellle/tmux-complete.vim'

"" Switch between alternate files
"Plug 'vim-scripts/a.vim'

"" Show unicode characters under cursor
"Plug 'tpope/vim-characterize'

"" Preview replacements
"Plug 'markonm/traces.vim'

"" Snippets
"Plug 'SirVer/ultisnips'

"" Insert unicode characters
"Plug 'chrisbra/unicode.vim'

"" Add shortcuts for commands that come in pairs
"Plug 'tpope/vim-unimpaired'

"" Close splits that are stale
"Plug 'TaDaa/vimade'

"" Add repeat to visual mode
"Plug 'vim-scripts/visualrepeat'

"" Add visual cues when splitting
"Plug 'wellle/visual-split.vim'

"" Create an editable search
"Plug 'AndrewRadev/writable_search.vim'

"" Emmet like plugin for vim
"Plug 'mattn/emmet-vim'
call plug#end()
doautocmd User PlugLoaded
