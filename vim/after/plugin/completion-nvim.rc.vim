if !exists('g:loaded_completion') 
  finish 
endif

set completeopt=menuone,noinsert,noselect
set shortmess+=c

"let g:completion_enable_snippet = 'Neosnippet'
let g:completion_enable_auto_popup = 0
let g:completion_confirm_key = ""
let g:completion_chain_complete_list = {
      \ 'default' : {
      \   'default': [
      \       {'complete_items': ['lsp', 'Neosnippet']},
      \       {'complete_items': ['path'], 'triggered_only': ['/']},
      \       {'mode': '<c-p>'},
      \       {'mode': '<c-n>'}
      \   ],
      \   'comment': []
      \   }
      \ }

imap <silent> <C-s><C-s> <Plug>(completion_trigger)
imap  <C-s><C-n> <Plug>(completion_next_source)
imap  <C-s><C-p> <Plug>(completion_prev_source)
imap <expr> <C-l>  pumvisible() ? complete_info()["selected"] != "-1" ?
      \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<C-l>"

