set nocompatible
syntax on

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformats=unix,dos

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
set list
set listchars=tab:.\ ,trail:.,extends:#,nbsp:.

" behavior
                        " ignore these files when completing names and in
                        " explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/bash     " use bash for shell commands
set hidden              " enable multiple modified buffers
set history=1000
set autowriteall        " Automatically save before commands like :next and :make
set autoread            " automatically read file that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set completeopt=menuone,preview
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file

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

set textwidth=79
set formatoptions=qrn1
"if version >= 703
if exists('+colorcolumn')
  set colorcolumn=80
endif

" folding
set foldmethod=indent

" backup settings
set nobackup
set noswapfile

let mapleader = ","
let maplocalleader = "\\"

if has('gui_running')
  " disable toolbar
  set nowrap
  set guioptions-=T
  set lines=35 columns=120

  set guifont=Monaco:h14

  set list
  set listchars=tab:▸\ ,eol:¬,extends:#,nbsp:.,trail:.
endif

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

