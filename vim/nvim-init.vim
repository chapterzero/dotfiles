call plug#begin()
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-commentary'
Plug 'rbgrouleff/bclose.vim'
Plug 'airblade/vim-gitgutter'
Plug 'arakashic/nvim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'chrisbra/csv.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tomasr/molokai'
call plug#end()


" Editor basic settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
" set number
set clipboard+=unnamedplus
set hidden

" Colorscheme settings
set termguicolors
" let g:gruvbox_italic=1
" colorscheme gruvbox
" colorscheme nord
colorscheme solarized
" let g:palenight_terminal_italics=1
" colorscheme palenight
" colorscheme ayu

" lightline settings
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
nnoremap <leader>e :RangerCurrentFile<CR>
nnoremap <leader>E :RangerWorkingDirectory<CR>
nnoremap <leader><Space> :nohlsearch<CR>
nnoremap <leader>res :vertical resize 120<CR>

" Golang shortcut
source $HOME/.config/nvim/golang.vim

" Plugins settings
" AG with options
source $HOME/.config/nvim/ag_with_opts.vim

" Disable default key map
let g:ranger_map_keys=0
