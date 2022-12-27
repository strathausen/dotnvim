" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/plugged')

" Easy aligning in vim, see https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Sensible vim defaults
Plug 'tpope/vim-sensible'

" File browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Fuzzy file finder or something?
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Distraction-free writing, :Goyo or :Goyo!
Plug 'junegunn/goyo.vim'


" ======
" Themes
" ======

Plug 'eemed/sitruuna.vim', { 'as': 'sitruuna' }
"Plug 'pierrecapo/night-owl'
"Plug 'artanikin/vim-synthwave84', { 'as': 'synthwave84' }
"Plug 'jaredgorski/spacecamp'
"Plug 'NLKNguyen/papercolor-theme', { 'as': 'papercolor' }
"Plug 'tpope/vim-vividchalk', { 'as': 'vividchalk' }
"Plug 'aonemd/kuroi.vim', { 'as': 'kuroi' }
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'nanotech/jellybeans.vim', { 'as': 'jellybeans' }
"Plug 'arzg/vim-colors-xcode', { 'as': 'xcode' }
"Plug 'ghifarit53/tokyonight-vim', { 'as': 'tokyonight' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'rafamadriz/neon', { 'as': 'neon' }

" =======
" Plugins
" =======

" Prisma 2 syntax
Plug 'pantharshit00/vim-prisma'
" Recipe language
Plug 'luizribeiro/vim-cooklang', { 'for': 'cook' }
" Date increment and decrement
Plug 'tpope/vim-speeddating'
" Easy surround management
Plug 'tpope/vim-surround'
" Cutlass overrides the delete operations to actually just delete and not affect the current yank.
"Plug 'svermeulen/vim-cutlass'
" Make . work for some other plugins
Plug 'tpope/vim-repeat'
" Unix commands in vim
Plug 'tpope/vim-eunuch'
" Auto close HTML tags
"Plug 'alvan/vim-closetag'
" Auto close [{(
Plug 'jiangmiao/auto-pairs'
" Python objects if, af, ic, ac
Plug 'jeetsukumaran/vim-pythonsense'
" Personal wiki
"Plug 'vimwiki/vimwiki'
" Snippets engine
Plug 'SirVer/ultisnips'
" Snippets repository
Plug 'honza/vim-snippets'

" tmux interoperation (c-h, c-j, ...)
Plug 'christoomey/vim-tmux-navigator'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Git integration
"Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" ===================
" Syntax Highlighting
" ===================

Plug 'hail2u/vim-css3-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'pantharshit00/vim-prisma'
"Plug 'jparise/vim-graphql'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
" ocaml, reason, rescript
Plug 'jordwalke/vim-reasonml'
Plug 'jparise/vim-graphql'

" JavaScript, TypeScript, etc
"Plug 'othree/yajs.vim'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim' " Typescript
"Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'mustache/vim-mustache-handlebars'
" Stylus CSS syntax
Plug 'iloginow/vim-stylus'
" Semantic highlighting for Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Python inline SQL highlighting
Plug 'MathSquared/vim-python-sql'
" Aligning text
"Plug 'godlygeek/tabular'
" Better markdown highlighting
Plug 'plasticboy/vim-markdown'


" Autocompletion
" ==============

" Completion framework
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" To be done manually, install coc plugins:
" CocInstall coc-css coc-html coc-json coc-vetur coc-java coc-phpls coc-python coc-highlight coc-tsserver
