" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugin checker
function! PlugLoaded(name)
  return (
    \ has_key(g:plugs, a:name) &&
    \ isdirectory(g:plugs[a:name].dir) &&
    \ stridx(&runtimepath, trim(g:plugs[a:name].dir, "/")) >= 0
    \ )
endfunction

if has('nvim')
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.vim/after/plugged')

Plug 'sainnhe/gruvbox-material'
" Plug 'sheerun/vim-polyglot'
" Plug 'Shougo/neosnippet.vim' | Plug 'honza/vim-snippets'
Plug 'machakann/vim-sandwich'

if !has('nvim')
  Plug 'sheerun/vim-polyglot'
endif

if has('nvim')
  Plug 'nvim-lua/plenary.nvim'

" LSP
  Plug 'neovim/nvim-lspconfig'

" Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Git
  Plug 'lewis6991/gitsigns.nvim'

" Autocomplete
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'saadparwaiz1/cmp_luasnip'

" Snippets
  Plug 'L3MON4D3/LuaSnip'               " snippet engine
  Plug 'rafamadriz/friendly-snippets'   " snippets source

" Extras
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end()
