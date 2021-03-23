" ======================================
"  Plug In
" ======================================
  packadd! vim-startify
  packadd! goyo.vim
  packadd! vim-floaterm
  packadd! vim-sandwich
  packadd! vim-easy-align
  packadd! vim-snippets

" --------------------------------------
"  vim-startify
" --------------------------------------
  let g:startify_lists = [
           \ { 'type': 'files',     'header': ['   MRU']            },
           \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
           \ { 'type': 'sessions',  'header': ['   Sessions']       },
           \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
           \ { 'type': 'commands',  'header': ['   Commands']       },
           \ ]

  let g:startify_bookmarks = [
           \ {'c': '~/.config/nvim/init.vim'},
           \ {'z': '~/.config/zsh/zshrc'},
           \ '~/Documents/idk.txt',
           \ ]

" Keymap -----------------------------------------
  nnoremap <Home> :Startify<CR>

" ------------------------------------------------
"  floaterm
" ------------------------------------------------
   let g:floaterm_shell = "/bin/zsh -l"
   let g:floaterm_title = "$1/$2"
   let g:floaterm_wintype = "normal"
   let g:floaterm_width = 0.6
   let g:floaterm_height = 0.6
   let g:floaterm_winblend = 0
   let g:floaterm_position = "bottom"
   let g:floaterm_autoclose = 1
   let g:floaterm_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']

"  Set floaterm window's background to black
"  hi Floaterm ctermbg=bg
"  Set floating window border line color to cyan, and background to orange
"  hi FloatermBorder ctermbg=bg ctermfg=fg

   function s:floatermSettings()
       setlocal nonumber norelativenumber
       " more settings
   endfunction

   autocmd FileType floaterm call s:floatermSettings()

"  Keymap
   let g:floaterm_keymap_toggle = '<F5>'
   let g:floaterm_keymap_prev   = '<F6>'
   let g:floaterm_keymap_next   = '<F7>'
   let g:floaterm_keymap_new    = '<F8>'

" ------------------------------------------------
"  goyo
" ------------------------------------------------
"  Config
   let g:goyo_width=80
   let g:goyo_height='70%'
   let g:goyo_linenr=0

"  Keymap
   nnoremap <silent> <leader>d :Goyo<CR>

" -------------------------------------------------
"  vim-sandwich
" -------------------------------------------------
"  if you have not copied default recipes
   let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

"  vim-surround key mapping
   runtime macros/sandwich/keymap/surround.vim

"  add spaces inside bracket
   let g:sandwich#recipes += [
       \   {'buns': ['{ ', ' }'], 'nesting': 1, 'match_syntax': 1, 'kind': ['add', 'replace'], 'action': ['add'], 'input': ['{']},
       \   {'buns': ['[ ', ' ]'], 'nesting': 1, 'match_syntax': 1, 'kind': ['add', 'replace'], 'action': ['add'], 'input': ['[']},
       \   {'buns': ['( ', ' )'], 'nesting': 1, 'match_syntax': 1, 'kind': ['add', 'replace'], 'action': ['add'], 'input': ['(']},
       \   {'buns': ['{\s*', '\s*}'],   'nesting': 1, 'regex': 1, 'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'], 'action': ['delete'], 'input': ['{']},
       \   {'buns': ['\[\s*', '\s*\]'], 'nesting': 1, 'regex': 1, 'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'], 'action': ['delete'], 'input': ['[']},
       \   {'buns': ['(\s*', '\s*)'],   'nesting': 1, 'regex': 1, 'match_syntax': 1, 'kind': ['delete', 'replace', 'textobj'], 'action': ['delete'], 'input': ['(']},
       \ ]

" ------------------------------------------------
"  vim-easy-align
" ------------------------------------------------
"  Start interactive EasyAlign in visual mode (e.g. vipga)
   xmap ga <Plug>(EasyAlign)

"  Start interactive EasyAlign for a motion/text object (e.g. gaip)
   nmap ga <Plug>(EasyAlign)

" --------------------------------------
"  coc.nvim
" --------------------------------------
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
  set updatetime=300

" coc-extentions
  let g:coc_global_extensions = [
           \ 'coc-git',
           \ 'coc-snippets',
           \ 'coc-html',
           \ 'coc-css',
           \ 'coc-tsserver',
           \ 'coc-rust-analyzer',
           \ 'coc-vetur',
           \ ]

"  Use K to show documentation in preview window.
   nnoremap <silent> K :call <SID>show_documentation()<CR>

   function! s:show_documentation()
       if (index(['vim','help'], &filetype) >= 0)
           execute 'h '.expand('<cword>')
       else
           call CocAction('doHover')
       endif
   endfunction

"  Highlight the symbol and its references when holding the cursor.
   autocmd CursorHold * silent call CocActionAsync('highlight')

"  Keymap

"  Use `[e` and `]e` to navigate diagnostics
"  Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
   nmap <silent> [e <Plug>(coc-diagnostic-prev)
   nmap <silent> ]e <Plug>(coc-diagnostic-next)

"  GoTo code navigation.
   nmap <silent> gd <Plug>(coc-definition)
   nmap <silent> gy <Plug>(coc-type-definition)
   nmap <silent> gi <Plug>(coc-implementation)
   nmap <silent> gr <Plug>(coc-references)

"  Show all diagnostics.
   nnoremap <silent><nowait> <space>a :<C-u>CocList diagnostics<cr>

"  Manage extensions.
   nnoremap <silent><nowait> <space>e :<C-u>CocList extensions<cr>
   
"  Show commands.
   nnoremap <silent><nowait> <space>c :<C-u>CocList commands<cr>

"  Find symbol of current document.
   nnoremap <silent><nowait> <space>o :<C-u>CocList outline<cr>

"  Search workspace symbols.
   nnoremap <silent><nowait> <space>s :<C-u>CocList -I symbols<cr>

"  Do default action for next item.
   nnoremap <silent><nowait> <space>j :<C-u>CocNext<CR>

"  Do default action for previous item.
   nnoremap <silent><nowait> <space>k :<C-u>CocPrev<CR>

"  Resume latest coc list.
   nnoremap <silent><nowait> <space>p :<C-u>CocListResume<CR>

"  coc-snippets ------------------------
"  Use <C-j> for jump to next placeholder, it's default of coc.nvim
   let g:coc_snippet_next = '<c-j>'

"  Use <C-k> for jump to previous placeholder, it's default of coc.nvim
   let g:coc_snippet_prev = '<c-k>'

"  Use <C-l> for trigger snippet expand.
   imap <C-l> <Plug>(coc-snippets-expand)
   
"  Use <C-j> for select text for visual placeholder of snippet.
   vmap <C-j> <Plug>(coc-snippets-select)

"  Use <C-j> for both expand and jump (make expand higher priority.)
   imap <C-j> <Plug>(coc-snippets-expand-jump)

"  coc-git -----------------------------
"  navigate chunks of current buffer
   nmap [g <Plug>(coc-git-prevchunk)
   nmap ]g <Plug>(coc-git-nextchunk)

"  show chunk diff at current position
   nmap gs <Plug>(coc-git-chunkinfo)
   
"  show commit contains current position
   nmap gc <Plug>(coc-git-commit)
