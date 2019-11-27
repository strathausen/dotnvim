" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/plugged')

" Easy aligning in vim, see https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Sensible vim defaults
Plug 'tpope/vim-sensible'

" File browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Fuzzy file finder or something?
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" Themes
" ======

"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'kjssad/quantum.vim', { 'as': 'quantum' }
Plug 'aonemd/kuroi.vim', { 'as': 'kuroi' }
"Plug 'nanotech/jellybeans.vim', { 'as': 'jellybeans' }


" Plugins
" =======

" Date increment and decrement
Plug 'tpope/vim-speeddating'
"Plug 'tpope/vim-unimpaired'
" Easy surround management
Plug 'tpope/vim-surround'
"Plug 'svermeulen/vim-cutlass'
" Make . work for some other plugins
Plug 'tpope/vim-repeat'


" Syntax Highlighting
" ===================

Plug 'HerringtonDarkholme/yats.vim' " Typescript
Plug 'nelsyeung/twig.vim'
"Plug 'kchmck/vim-coffee-script'
"Plug 'pangloss/vim-javascript'
"Plug 'isRuslan/vim-es6'
Plug 'othree/yajs.vim'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'posva/vim-vue'


" tmux interoperation
Plug 'christoomey/vim-tmux-navigator'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Git integration
Plug 'mhinz/vim-signify'
"Plug 'tpope/vim-fugitive'

" Autocompletion
" ==============

" Completion framework
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" To be done manually, install coc plugins:
" CocInstall coc-css coc-html coc-json coc-vetur coc-java coc-phpls coc-python coc-highlight coc-tsserver
