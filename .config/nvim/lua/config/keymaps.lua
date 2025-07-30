-- jk to exit Insert Mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

-- Crl+S to save in insert mode 
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>i', { noremap = true })

-- Save with doas
vim.keymap.set('n', '<leader>ds', ':w !sudo tee % > /dev/null<CR>', { noremap = true, silent = true })

