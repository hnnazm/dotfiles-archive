" ================================================
"  Key Mapping
" ================================================

"  Movement ––––––––––––––––––––––––––––––––––––––

"  Moving up and down 
   nnoremap <expr> j v:count ? 'j' : 'gj'
   nnoremap <expr> k v:count ? 'k' : 'gk'

"  Files –––––––––––––––––––––––––––––––––––––––––

 " fold file based on syntax
   nnoremap <silent> <leader>zs :setlocal foldmethod=syntax<CR>

 " rename current file
   nnoremap <Leader>fn :!mv <C-R>=expand("%")<CR>

"  Tabs ––––––––––––––––––––––––––––––––––––––––––

   nnoremap <silent> <pageDown> :tabnext<CR>
   nnoremap <silent> <pageUp> :tabprev<CR>

"  Buffers –––––––––––––––––––––––––––––––––––––––

"  Delete current buffer without losing the split
   nnoremap <silent> <C-x> :bp\|bd #<CR>

"  Go to next and previous buffer
   nnoremap <silent> gb :bnext<CR>
   nnoremap <silent> gB :bprevious<CR>

"  Arrow Keys ––––––––––––––––––––––––––––––––––––

"  Disable arrow keys
   nnoremap <Up>    <Nop>
   nnoremap <Down>  <Nop>
   nnoremap <Left>  <Nop>
   nnoremap <Right> <Nop>
   inoremap <Up>    <Nop>
   inoremap <Down>  <Nop>
   inoremap <Left>  <Nop>
   inoremap <Right> <Nop>

"  Copy & Paste ––––––––––––––––––––––––––––––––––

"  Copy to clipboard
   nnoremap  <leader>Y  "+yg_
   nnoremap  <leader>y  "+y
   vnoremap  <leader>y  "+y

"  Paste from clipboard
   nnoremap <leader>p "+p
   nnoremap <leader>P "+P
   vnoremap <leader>p "+p
   vnoremap <leader>P "+P

"  Terminal ––––––––––––––––––––––––––––––––––––––

"  Exit terminal mode
   tnoremap <Esc> <C-\><C-n>

"  Windows navigation ––––––––––––––––––––––––––––

    tnoremap <M-h> <C-\><C-N><C-w>h
    tnoremap <M-j> <C-\><C-N><C-w>j
    tnoremap <M-k> <C-\><C-N><C-w>k
    tnoremap <M-l> <C-\><C-N><C-w>l
    inoremap <M-h> <C-\><C-N><C-w>h
    inoremap <M-j> <C-\><C-N><C-w>j
    inoremap <M-k> <C-\><C-N><C-w>k
    inoremap <M-l> <C-\><C-N><C-w>l
    inoremap <M-o> <C-\><C-N><C-w>o
    nnoremap <M-h> <C-w>h
    nnoremap <M-j> <C-w>j
    nnoremap <M-k> <C-w>k
    nnoremap <M-l> <C-w>l
    nnoremap <M-o> <C-w>o

"  Toggle ––––––––––––––––––––––––––––––––––––––––

"  Line number
   nnoremap <Bslash>n :<C-U>setlocal number! number?<CR>
   nnoremap <Bslash>N :<C-U>setlocal relativenumber! relativenumber?<CR>

"  Cursorline and cursorcolumn 
   nnoremap <silent> <Bslash>c :<C-U>setlocal cursorline!
      \ <Bar>setlocal cursorcolumn!<CR>

"  Show tab, end-of-line, and trailing whitespace
   nnoremap <Bslash>l :<C-U>setlocal list!<CR>

"  Search Word –––––––––––––––––––––––––––––––––––

"  Search highlighted word
   vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

"  Replacing Word ––––––––––––––––––––––––––––––––

"  Replace word under cursor, globally, with confirmation
   nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
   vnoremap <Leader>s y :%s/<C-r>"//gc<Left><Left><Left>

"  VimGrep –––––––––––––––––––––––––––––––––––––––

 " :vimgrep for me ready to enter a search pattern
   nnoremap <Bslash>/ :<C-U>vimgrep //gj **<S-Left><S-Left><Right>

 " :helpgrep for me ready to enter a search pattern
   nnoremap <Bslash>? :<C-U>helpgrep \c<S-Left>
