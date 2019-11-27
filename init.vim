source ~/.config/nvim/plugins.vim
source ~/.config/nvim/keymap.vim


" Appearance
set termguicolors       " enable true colors support
set background=dark     " dark theme

"colorscheme quantum
colorscheme kuroi
" unfortunately, kuroi dark inverts the cursor when matching parents
"NoMatchParen
"let g:dracula_italic=0
"color dracula
"highlight Normal ctermbg=black
"let g:lightline = {
  "\ 'colorscheme': 'quantum'
  "\ }


" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" tabwidth
set shiftwidth=2
" always round to a multiple of shiftwidth (sw) when (in|de)denting
set shiftround
" wrap backspace key
set backspace=indent,eol,start
set smarttab
set tabstop=4
set expandtab

" provide mouse functionality when using vim in terminal
set mouse=a

" highlight search terms
set hlsearch
hi Search guibg=Khaki guifg=Black gui=NONE

" start searching while typing the search word
set incsearch
" Do not create swap files, we're using git after all
set nobackup
set nowritebackup
set noswapfile
" Enable vim to remember undo chains between sessions (vim 7.3)
set undofile
set undodir^=~/.nvim/undo//

" Visual line marking 80 characters (vim 7.3)
"set colorcolumn=80
"highlight ColorColumn ctermbg=5

" show at least that many lines below the cursor
set scrolloff=3
set sidescrolloff=5

" auto-save on focus change
autocmd BufLeave,FocusLost * silent! wall

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
