call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-two-firewatch'
Plug 'ayu-theme/ayu-vim'
Plug 'haishanh/night-owl.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
call plug#end()

let g:racer_cmd = "/home/chapterzero/.cargo/bin/racer"

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
let g:airline_powerline_fonts = 1
colorscheme OceanicNext
" let g:two_firewatch_italics=1
" colo two-firewatch
" let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme

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

let NERDTreeIgnore = ['\.pyc$', '\.swp$']

autocmd FileType rust source ~/.vim/customscripts/rust.vim
autocmd FileType go source ~/.vim/customscripts/go.vim
