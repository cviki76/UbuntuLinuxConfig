local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = {"lua", "javascript", "c"}
    highlight =  { enable = true },
    ident = { enable = true }
})