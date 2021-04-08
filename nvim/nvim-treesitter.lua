--  ------------------------------------------------
--    nvim-treesitter
--  ------------------------------------------------
    require('nvim-treesitter.configs').setup({
      ensure_installed = {  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        "bash",
        "css",
        "html",
        "javascript",
        "rust",
      }, 
      ignore_install = {},  -- List of parsers to ignore installing

      highlight = {
        enable = true,      -- false will disable the whole extension
        disable = {},       -- list of language that will be disabled
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },

      indent = {
        enable = true
      },
    })
