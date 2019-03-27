call plug#begin('~/.vim/plugged2')
" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/csv.vim'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
call plug#end()


" Editor basic settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
" set number
set clipboard=unnamedplus
set hidden
set hlsearch
let g:netrw_banner = 0

" Colorscheme settings
set background=dark
" set termguicolors
" let g:gruvbox_italic=1
" colorscheme gruvbox
" colorscheme ayu

" lightline settings
set laststatus=2
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
	  \   'right': [ [ 'lineinfo' ],
	  \			     [ 'percent' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Shortcut
let mapleader = ","
nnoremap <leader>t :FZF<CR>
nnoremap <leader>B :Buffers<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>f :Ag<Space>
nnoremap <leader>e :Ex<CR>
nnoremap <leader><Space> :nohlsearch<CR>
nnoremap <leader>res :vertical resize 120<CR>

" Golang shortcut
source $HOME/.config/nvim/golang.vim

" Plugins settings
" AG with options
source $HOME/.config/nvim/ag_with_opts.vim
