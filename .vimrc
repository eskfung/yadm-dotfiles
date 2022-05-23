" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=eol,indent,start

" Make a backup before overwriting a file.  The backup is removed
" after the file was successfully written
set writebackup

set ruler               " Show the cursor position at the bottom right
set showmatch           " Match parens
set matchtime=500      	" Match for half a second
set pastetoggle=<F3>	" Toggle our paste mode to not indent
set modeline
set cursorline
set number

" Searching
set ignorecase   " Case-insensitive search
set smartcase    " unless search contains upper-case
set incsearch    " Shows best match so far
set hls					 " Hilight all matches of previous search patern
set ic           " Ignore case

" Make vim smart
syntax on
filetype on
filetype plugin on
filetype indent on

" Erase trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set background=dark
colorscheme desert

" Correct your typos
command! Q  quit
command! W  write
command! Wq wq
command! WQ wq
command! Qa qa
command! QA qa
command! Wqa wqa
command! WQa wqa
command! WQA wqa

" Using Tab
set tabstop=2        " Displays tab as 4 spaces big
set shiftwidth=2     " Sets tab to be 4 spaces long
set expandtab        " Expands tab instead of displaying tab character
set autoindent

"t Auto-wrap text using textwidth
"c Auto-wrap comments using textwidth, inserts comment leader
"r Autoinsert comment leader in insert mode
"q allow formatting of comments with 'gq'
"a autoformatting of paragraphs
"n recognize numbered lists when formatting text
"2 use the indentation of the second line of the paragraph to format the
"  paragraph
"b auto-wrap at blanks at or before 'textwidth'
"l long lines are not broken in insert mode (!!)
set formatoptions=cqntb
set textwidth=79

" System dictionary file (C-x C-k)
set dictionary=/usr/share/dict/words

" Use vim-plug as plugin manager
call plug#begin('~/.vim/plugged')
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" fzf
set rtp+=/usr/local/bin/fzf
map <Leader>t :Files<CR>
map <Leader>e :Buffers<CR>
map <Leader>f :Ag
