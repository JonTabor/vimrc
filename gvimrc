execute pathogen#infect()
colo evening 

set number
set relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set splitbelow
set splitright

" Ignore whitespace when using vimdiff
set diffopt+=iwhite
" Set listchars for use with show list
set listchars+=space:˽,nbsp:˾,trail:ʭ

" Disable the menu in gvim
set guioptions=Pc

set incsearch
set hlsearch

execute pathogen#infect()
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:javascript_plugin_jsdoc = 1

" use jshint for syntastic
let g:syntastic_javascript_checkers = ['jshint']
" show any linting errors immediately
let g:syntastic_check_on_open = 1

set statusline+=%{SyntasticStatuslineFlag()}

set lines=150
set columns=110

" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 1

" If base64 exists in the system, map F2 & F3 to encode/decode
if filereadable("/usr/bin/base64")
    " 1. base64-encode(visual-selection) -> F2 -> encoded base64-string
    :vnoremap <F2> c<c-r>=system("base64 -w 0", @")<cr><esc>

    " 2. base64-decode(visual-selection) -> F3 -> decoded string
    :vnoremap <F3> c<c-r>=system("base64 -d", @")<cr> 
endif

" set up the indenting
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
