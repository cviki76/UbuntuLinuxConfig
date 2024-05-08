return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  }
  ,
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "clangd", "basedpyright"}
      })
    end
  }
  ,
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilites = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup {
        capabilites = capabilites,
        settings = {
          Lua = {
            diagnostics = {
              globals = {'vim'},
            },
          },
        },
      }
      lspconfig.clangd.setup({
        capabilites = capabilites
      })
      lspconfig.basedpyright.setup({
        capabilites = capabilites
      })

      vim.keymap.set('n', '.', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
