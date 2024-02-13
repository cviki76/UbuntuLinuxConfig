return{        
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