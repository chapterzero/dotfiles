call plug#begin()
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'haishanh/night-owl.vim'
Plug 'mhartington/oceanic-next'
call plug#end()

let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ 'go': ['gopls'],
\ }

" Editor basic settings
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
set clipboard=unnamedplus
set hidden
set autoindent
set hlsearch

" Colorscheme settings
set termguicolors
set background=dark
colorscheme nord

" Shortcut
let mapleader = ","
nnoremap <leader>t :FZF<CR>
nnoremap <leader>B :Buffers<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>f :Ag<Space>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>E :NERDTreeFind<CR>
nnoremap <leader><Space> :nohlsearch<CR>
nnoremap <leader>res :vertical resize 120<CR>

nmap <leader>K <Plug>(lcn-hover)
nmap <leader>gd <Plug>(lcn-definition)
nmap <leader>rf <Plug>(lcn-format)
nmap <silent><F2> <Plug>(lcn-rename)
