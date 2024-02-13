local plugins = {
  { 
    "catppuccin/nvim", name = "catppuccin", priority = 1000
  }
  ,
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
  ,
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  }
  ,
  {        
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
      local harpoon = require("harpoon")
      ---@diagnostic disable-next-line: missing-parameter
      harpoon:setup()
      local function map(lhs, rhs, opts)
                  vim.keymap.set("n", lhs, rhs, opts or {})
      end
      map("<leader>j", function() harpoon:list():append() end)
      map("<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      map("<C-a>", function() harpoon:list():select(1) end)
      map("<C-s>", function() harpoon:list():select(2) end)
      map("<C-d>", function() harpoon:list():select(3) end)
      map("<C-f>", function() harpoon:list():select(4) end)
    end
  }
  ,
  {
    "mbbill/undotree"
  }
  ,
  {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
      }
  }
}
local opts = {}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins, otps)