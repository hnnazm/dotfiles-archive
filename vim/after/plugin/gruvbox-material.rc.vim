if !PlugLoaded("gruvbox-material")
  finish
endif

let g:gruvbox_material_palette    = 'material'
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:gruvbox_material_diagnostic_text_highlight = 1
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_enable_italic = 0
let g:gruvbox_material_sign_column_background = 'none'

"set termguicolors
set background=dark
set notermguicolors
colorscheme gruvbox-material
