" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

if has('nvim')
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.vim/after/plugged')

Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/neosnippet.vim' | Plug 'honza/vim-snippets'
Plug 'machakann/vim-sandwich'

if !has('nvim')
  Plug 'sheerun/vim-polyglot'
endif

if has('nvim')
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-lua/completion-nvim'
endif

call plug#end()
