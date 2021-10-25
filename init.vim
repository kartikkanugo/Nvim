:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ruler
:set ic
:set hls is






call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
" Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim',  {'branch': 'release'}  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

call plug#end()

:set encoding=UTF-8




":nnoremap <C-f> :NERDTreeFocus<CR>
":nnoremap <C-n> :NERDTree<CR>
":nnoremap <C-t> :NERDTreeToggle<CR>

:nnoremap <C-e> <Cmd>CocCommand explorer<CR>
:nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

:nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme gruvbox

:let g:NERDTreeDirArrowExpandable="+"
:let g:NERDTreeDirArrowCollapsible="~"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
