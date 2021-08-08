" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/neosnippet.vim' | Plug 'honza/vim-snippets'
Plug 'machakann/vim-sandwich'

call plug#end()

" gruvbox-material
let g:gruvbox_material_palette    = 'material'
let g:gruvbox_material_background = 'soft'
set termguicolors
set background=dark
colorscheme gruvbox-material

" neosnippet
imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <C-l>     <Plug>(neosnippet_expand_target)
let g:neosnippet#disable_runtime_snippets = {
  \ '_': 1,
  \ }
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'
let g:neosnippet#scope_aliases = {}
let g:neosnippet#scope_aliases['javascriptreact'] = 'html,javascript'



" vim-sandwinch
runtime macros/sandwich/keymap/surround.vim
