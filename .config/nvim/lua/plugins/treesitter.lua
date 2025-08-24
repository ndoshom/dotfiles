return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- Automatically update parsers
    config = function()
      require('nvim-treesitter.configs').setup({
        -- List of language parsers to install
        ensure_installed = { 'lua', 'vim', 'vimdoc', 'query', 'javascript', 'python', 'c', 'cpp', 'bash', 'fish', 'rust' },
        -- Enable syntax highlighting
        highlight = { enable = true },
        -- Enable incremental selection
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<C-space>',
            node_incremental = '<C-space>',
            scope_incremental = '<C-s>',
            node_decremental = '<C-backspace>',
          },
        },
        -- Enable indentation
        indent = { enable = true },
      })
    end,
  }
