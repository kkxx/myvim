" This is my vim config
" Author:
"       kkxx
"       http://xxkk.me - wangkaixq@gmail.com
"
" Update date:
"        30/06/13 18:03

"Source the vimrc file after saving it
if has("autocmd")
    "autocmd bufwritepost _vimrc source $MYVIMRC
endif

"To define a mapping which uses the mapleader variable, the special string <leader> can be used, it is replaced with the string value of mapleader
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" General config
" this option has the effect of making vim either more vi-compatible, or make vim behave in a more useful way 'nocp = nocompatible'
set nocp

" Print the line number in front of each line
set number

" Show the line and column number of the cursor position, separated by a comma
set ruler

" When there is a previous search pattern, highlight all its matches
set hlsearch

" While typing a search command, show where the pattern, as it was typed so far, matches
set incsearch

"Ignore case int search patterns
set ignorecase

"Override the ignorecase option if the search pattern contain upper case characters
set smartcase

"When this option is set the screen will not be redrawn while execution macros,registers and other commands that have not been typed
set lazyredraw

"changes the special characters that can be used in search patterns
set magic

" Number of spaces to use for each step of auto indent
set shiftwidth=4

" Number of spaces the <Tab> in the file counts for
set tabstop=4

"In insert model: Use the appropriate number of spaces to insert a <Tab> 
set expandtab

" copy indent from current line when starting a new line
set autoindent

" Do smart autoindenting when starting a new line, works for C-like prograns
set smartindent

" this option changes how text is displayed
set wrap

" When on, a <Tab> in front of a line inserts blanks according to shiftwidth tabstop is used in other places, A <BS> will delete a 'shiftwidth' worth of space at the start of the line
set smarttab

" when on spell checking will be done
set spell

" when a bracket is inserted, briefly jump to the matching one
set showmatch

"tenths of a second to show the matching paren
set matchtime=2

"Num of screen lines to use for the command-line
set cmdheight=2

" Enable automatic C program indenting
set cindent

" the cino affect the way cindent reindents lines in a c program, cinoption-values for the values of this option
set cinoptions=:0g0t0(sus

" Influences the working of <BS> ,<Del>, CTRL-W and CTRL-U in insert mode
" indent: allow backspacing over autoindent
" eol: allow backspacing over line breaks(join lines)
" start: allow backspacing over the start insert
set backspace=indent,eol,start

" allow specified key that move the cursor left/right to move to the previous/next line when the cursor is on the first/last character in the lines
set whichwrap+=<,>,h,l

" this is a list of font which will be used for GUI version vim
set guifont=Consolas:h12

" Load color scheme name, this searches runtime path for file 'colors/{name}.vim'
colorscheme desert

" switch on syntax highlighting
syntax enable

"Minimal number of screen lines to keep above and blow the cursol
set scrolloff=7

" when wildmenu is on command-line completion operates in an enhanced mode
set wildmenu

"A list of file patterns, A file that matches with one of these patterns is ignored when completing file or directory names, and influences the result of expand(),glob(),gloppath() unless a flat is passed to disable this
set wildignore=*.o.*~.*pyc,*/.git/*,*/.hg/*,*/.svn/*

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-kr,latin1,euc-jp
set ambiwidth=double

"enable filetype plugins
filetype plugin on
filetype indent on

" how many lines of history vim has to rember
set history=700

"when a buffer is abandoned it becomes hidden
set hidden

" Auto read when a file is changed from the outside
set autoread

nmap <leader>v :tabedit $MYVIMRC<CR>
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"when non-zero, a column with the specified width is show at the side of the window which indicates open and closed folds, the maximum value is 12
set foldcolumn=1

" the max window when open default
if has ("win32")
    au GUIEnter * simalt ~x
endif

" set the option when running in GUI mode
set guioptions-=T
set guioptions-=m
set guioptions-=e
set mouse-=a
set guitablabel=%M\ %t

"Turn off backup,swapfile and 
set nobackup
set nowb
set noswapfile

"
set lbr
set tw=500

"Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tbmove
map <leader>t<leader> :tabnext

" set status lines
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l



function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction
