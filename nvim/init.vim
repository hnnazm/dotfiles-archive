"
"   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
"                                                      config-file

" ======================================
"  General Setting
" ======================================

   scriptencoding utf-16        " allow emojis in vimrc
   set nocompatible             " vim, not vi
   syntax on                    " syntax highlighting
   filetype plugin indent on    " try to recognize filetypes and load rel' plugins
   set shell=/bin/zsh\ -l       " Set the shell

" Behavior Modification ----------------

"  Leader Key
   let g:mapleader=" "
   let g:maplocalleader="\\"

"  Alias for leader key
"  nmap <space> ,
"  xmap <space> ,

   set backspace=2       " Backspace deletes like most programs in insert mode
   set history=200       " how many : commands to save in history
   set autowrite         " Automatically :write before running commands
   set ignorecase        " ignore case in searches
   set smartcase         " use case sensitive if capital letter present or \C
   set magic             " Use 'magic' patterns (extended regular expressions).
   set confirm
   set guioptions=       " remove scrollbars on macvim
   set noshowmode        " don't show mode as airline already does
   set showtabline=2
   set laststatus=2
   set showcmd           " show any commands
"  set foldmethod=manual " set folds by syntax of current language
"  set foldcolumn=2      " display gutter markings for folds
"  set signcolumn=yes
"  set mouse=a           " enable mouse (selection, resizing windows)
   set iskeyword+=-      " treat dash separated words as a word text object
   set tabstop=2         " Softtabs or die! use 2 spaces for tabs.
   set shiftwidth=4      " Number of spaces to use for each step of (auto)indent.
   set expandtab         " insert tab with right amount of spacing
   set shiftround        " Round indent to multiple of 'shiftwidth'
"  set termguicolors     " enable true colors
   set hidden            " enable hidden unsaved buffers
   set autochdir         " change directory automatically based on file opened
   set nowrapscan        " disable wrap scan at the end of search
   set nohlsearch        " disable hightligt when searching

" Text appearances ---------------------

  set textwidth=80
  set noruler
" set wrap                            " nowrap by default
" set linebreak                       " wrap characters in 'breakat'
  set nolist                          " show invisible characters
  set listchars=tab:»·,trail:-,nbsp:·,eol:$,space:· 

" Tabs and buffers ---------------------

  set switchbuf=useopen

" Open new split panes to right and bottom, which feels more natural
  set splitbelow
  set splitright

" Interactive find replace preview
  set inccommand=nosplit


" UI Customization ---------------------

  colorscheme default

" Set background
  set background=light

" Highlight column after 'textwidth'
  set cc=+1
  highlight ColorColumn ctermbg=236 guibg=#303030
" let &colorcolumn=join(range(100,999),',')

" hide vertical split
  hi VertSplit guifg=fg guibg=bg
  set fillchars=vert:\
      hi! VertSplit guifg=black guibg=black ctermfg=black ctermbg=black

" gui cursor
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
           \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
           \,sm:block-blinkwait175-blinkoff150-blinkon175

  set ttimeout
  set ttimeoutlen=1
  set ttyfast

" ======================================
"  Source File
" ======================================

  let g:nvim_config_root = stdpath('config')
  let g:config_file_list = [
           \ 'mappings.vim',
           \ 'netrw.vim',
           \ 'utils.vim',
           \ 'plugins.vim',
           \ ]

  for f in g:config_file_list
      execute 'source ' . g:nvim_config_root . '/' . f
  endfor
