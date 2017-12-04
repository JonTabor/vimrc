execute pathogen#infect()

colo desert

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set splitbelow
set splitright

set filetype=on

set clipboard=unnamedplus

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:javascript_plugin_jsdoc = 1

" use jshint for syntastic
let g:syntastic_javascript_checkers = ['jshint']
" show any linting errors immediately
let g:syntastic_check_on_open = 1

" 1. base64-encode(visual-selection) -> F2 -> encoded base64-string
:vnoremap <F2> c<c-r>=system("base64 -w 0", @")<cr><esc>

" 2. base64-decode(visual-selection) -> F3 -> decoded string
:vnoremap <F3> c<c-r>=system("base64 -d", @")<cr> 

set number
set relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set incsearch
set hlsearch

" Ignore whitespace when using vimdiff
set diffopt+=iwhite

" set up indenting
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
