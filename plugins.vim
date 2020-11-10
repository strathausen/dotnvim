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

Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'kjssad/quantum.vim', { 'as': 'quantum' }
Plug 'aonemd/kuroi.vim', { 'as': 'kuroi' }
"Plug 'nanotech/jellybeans.vim', { 'as': 'jellybeans' }
Plug 'NLKNguyen/papercolor-theme', { 'as': 'papercolor' }
"Plug 'ParamagicDev/vim-medic_chalk', { 'as': 'medic_chalk' }
"Plug 'tpope/vim-vividchalk', { 'as': 'vividchalk' }
"Plug 'arzg/vim-colors-xcode', { 'as': 'xcode' }
Plug 'eemed/sitruuna.vim', { 'as': 'sitruuna' }


" Plugins
" =========

" Date increment and decrement
Plug 'tpope/vim-speeddating'
"Plug 'tpope/vim-unimpaired'
" Easy surround management
Plug 'tpope/vim-surround'
"Plug 'svermeulen/vim-cutlass'
" Make . work for some other plugins
Plug 'tpope/vim-repeat'
" Unix commands in vim
Plug 'tpope/vim-eunuch'
" Auto close HTML tags
Plug 'alvan/vim-closetag'
" Auto close [{(
Plug 'jiangmiao/auto-pairs'
" Python objects if, af, ic, ac
Plug 'jeetsukumaran/vim-pythonsense'


" Syntax Highlighting
" =====================

Plug 'HerringtonDarkholme/yats.vim' " Typescript
Plug 'nelsyeung/twig.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'jparise/vim-graphql'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
"Plug 'kchmck/vim-coffee-script'
"Plug 'pangloss/vim-javascript'
"Plug 'isRuslan/vim-es6'
Plug 'othree/yajs.vim'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'posva/vim-vue'
Plug 'mustache/vim-mustache-handlebars'
" Stylus CSS syntax
Plug 'iloginow/vim-stylus'
" Semantic highlighting for Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Python inline SQL highlighting
Plug 'MathSquared/vim-python-sql'
" Aligning text
Plug 'godlygeek/tabular'
" Better markdown highlighting
Plug 'plasticboy/vim-markdown'


" tmux interoperation
Plug 'christoomey/vim-tmux-navigator'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Git integration
"Plug 'mhinz/vim-signify'
"Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Autocompletion
" ==============

" Completion framework
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" To be done manually, install coc plugins:
" CocInstall coc-css coc-html coc-json coc-vetur coc-java coc-phpls coc-python coc-highlight coc-tsserver
