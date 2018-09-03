execute pathogen#infect()
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set ignorecase
set autoindent
set wrap
set number
set hlsearch
filetype plugin on
syntax on

set background=dark
set termguicolors

" Highlight trailing space
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=grey guibg=#606672
autocmd BufWinEnter * match ExtraWhitespace /\s\+\%#\@<!$/

" Overwrite colorscheme
autocmd ColorScheme * highlight TestFail ctermbg=DarkRed guibg=#db0000 guifg=#FFFFFF
autocmd ColorScheme * highlight TestOk ctermbg=DarkGreen guibg=#039a00 guifg=#FFFFFF

" Golang prefer use tab for identation
autocmd filetype go setlocal noexpandtab

" Vim airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='twofirewatch'
let g:airline_powerline_fonts=1

" Gitgutter disable mappings
let g:gitgutter_map_keys = 0

" Buffer settings
set hidden

" Let vim using X plus register
set clipboard=unnamedplus
" let g:two_firewatch_italics=1
" colorscheme two-firewatch
" let ayucolor ="mirage"
colorscheme ayu
" let g:solarized_term_italics=1
" colorscheme solarized8
" colorscheme seti

" NERDTree Settings
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp', '\.git$']

" Ack settings
if executable('ag')
  let g:ackprg = 'ag --nogroup'
endif

" Keyboard shortcut
let mapleader = ","
noremap <leader>e :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFocus<CR>R<c-w><c-p>
noremap <leader>E :NERDTreeFind<CR>
noremap <leader>t :FZF<CR>
noremap <leader>f :Ack!<Space>
noremap <leader>g :Gstatus<CR>
nnoremap <leader>c :%s/\s\+$//g<CR>
nnoremap <silent> <Space> :nohlsearch<CR>
" imap jj <Esc>

" Buffer shortcut
nmap <leader>n :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" Quickfix window
noremap <F9> :call asyncrun#quickfix_toggle(15)<cr>
noremap <leader>T :call RunTest()<cr>

" Custom vimscripts
let g:lastFileTested = ""
function! IsTestFile()
    let filename = @%
    let match = matchstr(filename, 'test\.php$')
    return !empty(match)
endfunction

function! RunTest()
    let filename = @%
    if !IsTestFile()
        let filename = g:lastFileTested
    else
        let g:lastFileTested = filename
    endif

    if filename != ""
        execute "AsyncRun ./vendor/bin/phpunit -c . " . filename
    endif
endfunction
