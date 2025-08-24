return {
  -- Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    config = function()
      require("mason").setup()
    end,
  },
  -- Bridge between mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "zls" }, -- Ensure Lua and Zig LSPs are installed
        automatic_installation = true,
      })
    end,
  },
  -- LSP configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      -- Lua LSP setup
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- Recognize `vim` global
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      })

      -- Zig LSP setup
      lspconfig.zls.setup({
        settings = {
          zig = {
            zig_exe_path = vim.fn.exepath("zig"), -- Ensure `zig` is in PATH
          },
        },
      })
    end,
  },
}
