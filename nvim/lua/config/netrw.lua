vim.g.netrw_banner          = 0                  -- disable annoying banner
vim.g.netrw_winsize         = 30                -- window size
vim.g.netrw_wiw             = 1                     -- set alternate window size
vim.g.netrw_usetab          = 1                  -- required for netrw_wiw
vim.g.netrw_browse_split    = 0            -- open in prior tab
vim.g.netrw_altv            = 1                    -- open splits to the right
vim.g.netrw_liststyle       = 3               -- wide list view
vim.g.netrw_keepdir         = 1
vim.g.netrw_dirhistmax      = 0
vim.g.netrw_browsex_viewer  = "open"     -- open with special
vim.g.netrw_sort_by         = "exten"
vim.g.netrw_sort_direction  = "reverse"
vim.g.netrw_sort_options    = "i"          -- sorting
-- vim.g.netrw_list_hide = netrw_gitignore#Hide()
-- vim.g.netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
-- let g:netrw_chgwin = 2

-- let g:NetrwIsOpen=0

-- function! ClearNetrw()
--   if g:NetrwIsOpen
--     let i = bufnr("$")
--     while (i >= 1)
--       if (getbufvar(i, "&filetype") == "netrw")
--         silent exe "bwipeout " . i 
--       endif
--       let i-=1
--     endwhile
--     let g:NetrwIsOpen=0
--   endif
-- endfunction
-- 
-- function! ToggleNetrw(opt)
--   if g:NetrwIsOpen
--     let i = bufnr("$")
--     while (i >= 1)
--       if (getbufvar(i, "&filetype") == "netrw")
--         silent exe "bwipeout " . i 
--       endif
--       let i-=1
--     endwhile
--     let g:NetrwIsOpen=0
--   else
--     if a:opt
--       let g:NetrwIsOpen=1
--       try
--         silent Lexplore! %:h
--       catch 'E499'
--         silent Lexplore!
--       endtry
--     else
--       try
--         silent Ex!
--       catch 'E499'
--         silent Ex!
--       endtry
--     endif
--   endif
-- endfunction
-- 
-- function! OpenToRight()
--   :normal v
--   let g:path=expand('%:p')
--   :q!
--   execute 'belowright vnew' g:path
--   :normal <C-w> l
--   "execute 'cd %:h'
-- endfunction
-- 
-- function! OpenBelow()
--   :normal v
--   let g:path=expand('%:p')
--   :q!
--   execute 'belowright new' g:path
--   :normal <C-w> l
--   "execute 'cd %:h'
-- endfunction
-- 
-- function! NetrwMappings()
--   noremap <buffer> <C-v> :call OpenToRight()<CR>
--   noremap <buffer> <C-x> :call OpenBelow()<CR>
--   nmap <buffer> ss <Plug>NetrwShrink
-- endfunction
-- 
-- augroup netrw_mappings
--   autocmd!
--   autocmd filetype netrw call NetrwMappings()
-- augroup END
-- 
-- "autocmd BufLeave netrw call ClearNetrw()
-- 
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":Lexplore!<CR>", { noremap = true, silent = true })
-- noremap <silent> <Leader><Leader> :Lexplore!<CR>
-- nmap <Bslash><Bslash> <Plug>NetrwShrink
