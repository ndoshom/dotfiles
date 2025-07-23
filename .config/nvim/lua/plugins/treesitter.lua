
require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', 'python', 'c', 'bash' },
  highlight = { enable = true },
  indent = { enable = true },
}
