set nocompatible
syntax on

" prevent vim from adding that stupid empty line at the end of every file set noeol
set binary

set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformats=unix,dos

" snipmate
filetype on
filetype plugin on
filetype indent on

" presentation settings
set number
set numberwidth=3
set textwidth=0         " Do not wrap words (insert)
set nowrap
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line

" behavior
                        " ignore these files when completing names and in
                        " explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set hidden              " enable multiple modified buffers
set history=1000
set autowriteall        " Automatically save before commands like :next and :make
set autoread            " automatically read file that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set completeopt=menuone,preview
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file

if !(has('win16') || has('win32') || has('win64'))
  set shell=/bin/sh
endif

set autoindent
set tabstop=4
set shiftwidth=4 softtabstop=4
set smartindent
set expandtab

set ttimeoutlen=50      " fast Esc to normal mode

" search settings
set incsearch ignorecase hlsearch
set smartcase           " do not ignore if search pattern has CAPS
set visualbell
set noerrorbells
" clear recent search highlighting with space
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> 

" line tracking
set numberwidth=5
set cursorline
set cursorcolumn
" turn off cursor blinking
set guicursor+=a:blinkon0

set textwidth=79
set formatoptions=qrn1
"if version >= 703
if exists('+colorcolumn')
  set colorcolumn=80
endif

" folding
"set foldmethod=indent

" backup settings
set nobackup
set noswapfile

let mapleader = ","
let maplocalleader = "\\"

if has("win32") || has("win64")
  " 中文字体
  set rtp+=$HOME/.vim,$HOME/.vim/after
  set guifont=Source_Code_Pro:h12
  set guifontwide=Yahei_Consolas_Hybrid:h12
endif

if has("gui_macvim")
  set guifont=Monaco:h14
  set rtp+=~/.vim
endif

if has('gui_running')
  " disable toolbar
  set nowrap
  set guioptions-=T
  set lines=35 columns=100
  colorscheme molokai
endif

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

" Sidebar folder navigation
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeWinSize=35
let NERDTreeWinPos='right'
"let NERDTreeIgnore=['CVS']

let mapleader = ','
noremap <Leader>, :NERDTreeToggle<cr>
map <Leader>t :tabnew<cr>
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
map <Leader>w :tabclose<cr>
map <Leader>pd :!perldoc %<cr>
map <Leader>f :TlistToggle<cr>
map <leader>tts :%s/\s\+$//<cr>
map <leader>b :TagbarToggle<cr>
map <leader>F :NERDTreeFind<cr>
map <leader>R :source ~/.vimrc<cr>

" Move single lines up-down
nmap <c-up> ddkP
nmap <c-down> ddp

" Resize vertical windows
nmap + <c-w>+
nmap _ <c-w>-

" Resize horizontal windows
nmap > <c-w>>
nmap < <c-w><

" Move multiple lines up-down
vmap <c-up> xkP`[V`]
vmap <c-down> xp`[V`]

" autocompletion
imap <Leader><Tab> <C-X><C-O>

" file types
au BufRead,BufNewFile *.asd,*.lisp set filetype=lisp
au BufRead,BufNewFile *.t,*.cgi set filetype=perl
" markdown support - turn-on distraction free writing mode for markdown files
"au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown

