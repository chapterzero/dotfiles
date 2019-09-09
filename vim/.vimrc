call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()


" Editor basic settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
set clipboard=unnamedplus
set hidden
set autoindent
set hlsearch

" Colorscheme settings
if has('gui_running')
	set background=dark
	colorscheme nord
	let g:airline_powerline_fonts = 1
	let g:solarized_italic = 1
	" set guifont=Meslo\ LG\ M\ DZ\ 10
	set guifont=Iosevka\ 12
else
	set background=dark
	colorscheme pablo
endif

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

" Golang shortcut
source $HOME/.vim/customscript/golang.vim

" Rust shortcut
source $HOME/.vim/customscript/rust.vim

" Python shortcut & settings
source $HOME/.vim/customscript/python.vim

" Plugins settings
" AG with options
source $HOME/.vim/customscript/ag_with_opts.vim

" lightline settings
" source $HOME/.vim/customscript/lightline.vim
