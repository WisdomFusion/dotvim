" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set nocompatible
syntax on

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

set encoding=utf-8
lang messages zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
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

if has('gui_running')
  " disable toolbar
  set nowrap
  set guioptions-=T
  set lines=35 columns=100
  " colorscheme molokai
endif

if has("win32") || has("win64")
  " 中文字体
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  set guifont=Source_Code_Pro:h12
  set guifontwide=Yahei_Consolas_Hybrid:h12
endif

if has("gui_macvim")
  set guifont=Monaco:h14
endif

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

