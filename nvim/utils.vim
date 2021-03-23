" ======================================
"  Utilities
" ======================================

" Session ---------------------------{{{

" function! MakeSession()
"   let b:sessiondir = $HOME . "/.config/nvim/sessions"
"   if (filewritable(b:sessiondir) != 2)
"     exe 'silent !mkdir -p ' b:sessiondir
"     redraw!
"   endif
"   let b:filename = b:sessiondir . '/session.vim'
"   exe "mksession! " . b:filename
" endfunction
" 
" function! LoadSession()
"   let b:sessiondir = $HOME . "/.config/nvim/sessions"
"   let b:sessionfile = b:sessiondir . "/session.vim"
"   if (filereadable(b:sessionfile))
"     exe 'source ' b:sessionfile
"   else
"     echo "No session loaded."
"   endif
" endfunction
" 
" " Adding automatons for when entering or leaving Vim
" if(argc() == 0)
"   au VimEnter * nested :call LoadSession()
" endif
" au VimLeave * :call MakeSession()"
" }}}

" Scrach buffer ---------------------{{{
  function! Scratch()
      split
      noswapfile hide enew
      setlocal buftype=nofile
      setlocal bufhidden=hide
      setlocal nobuflisted
      setlocal readonly
  "lcd ~
  "file scratch
  endfunction

" }}}

" Vimscript file settings -----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Macro all line --------------------{{{
  xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

  function! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
  endfunction
  " }}}


  " Quick search in current buffer
    " Search for selected text, forwards or backwards.
    "vnoremap <silent> * :<C-U>
    "  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    "  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
    "  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    "  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
    "vnoremap <silent> # :<C-U>
    "  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    "  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
    "  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    "  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

set wildcharm=<C-z>
cnoremap <expr> <Tab>   getcmdtype() =~ '[\/?]' ? "<C-g>" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() =~ '[\/?]' ? "<C-t>" : "<S-Tab>"


" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
set modeline
set modelines=5

function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" Commenting
  command! -range=% Co execute "<line1>,<line2>normal! " . (getline(<line1>) =~ '\V\^\s\*'.printf(escape(&commentstring, '\'), '\.\*') ? repeat('x', len(printf(&commentstring, ''))) : 'i'. printf(&commentstring, ''))



" function! SearchHlClear()
"      let @/ = ""
" endfunction
" augroup searchhighlight
"     autocmd!
"     autocmd CursorHold,CursorHoldI * call SearchHlClear()
" augroup END

command! -nargs=0 Prettier :CocCommand prettier.formatFile

