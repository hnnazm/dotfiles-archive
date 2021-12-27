if !PlugLoaded("LuaSnip")
  finish
endif

if !exists('g:luasnip')
  finish
endif

lua << EOF
use { 'L3MON4D3/LuaSnip' } 
use { 
  'hrsh7th/nvim-cmp',
  config = function ()
    require'cmp'.setup {
    snippet = {
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end
    },
  
    sources = {
      { name = 'luasnip' },
      -- more sources
    },
  }
  end
}
use { 'saadparwaiz1/cmp_luasnip' }
EOF

imap <silent><expr> <C-l> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-C-l> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <C-l> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-C-l> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
