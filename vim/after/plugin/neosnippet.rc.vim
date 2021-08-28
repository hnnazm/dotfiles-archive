let g:neosnippet#disable_runtime_snippets = {
  \ '_': 1,
  \ }
let g:neosnippet#snippets_directory='~/.vim/after/plugged/vim-snippets/snippets'
let g:neosnippet#scope_aliases = {}
let g:neosnippet#scope_aliases['javascriptreact'] = 'html,javascript'

imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <C-l>     <Plug>(neosnippet_expand_target)
