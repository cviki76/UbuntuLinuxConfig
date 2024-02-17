-- Vim mappings
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set({'n','v'}, 'i', 'k')
vim.keymap.set({'n','v'}, 'j', 'h')
vim.keymap.set({'n','v'}, 'k', 'j')

local vimscript = [[
    noremap s a
    noremap S A
    noremap a i
    noremap A I
]]
vim.api.nvim_exec(vimscript, false)

vim.keymap.set({'n','v'}, 'J', 'b')
vim.keymap.set({'n','v'}, 'L', 'e')
vim.keymap.set('n', 'f', 'w')
vim.keymap.set('n', 'w', 'f')
vim.keymap.set('n', 'W', 'F')
vim.keymap.set('n', 'F', 'W')
vim.keymap.set('n', 'z', 't')
vim.keymap.set('n', 'Z', 'T')
vim.keymap.set('n', 't', '<C-d>zz')
vim.keymap.set('n', 'T', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'b', 'u')
vim.keymap.set('n', 'B', '<C-r>')
vim.keymap.set('n', 'e', 'r')

vim.keymap.set({'n','v'}, 'r', '"+y')
vim.keymap.set({'n','v'}, 'R', '"+Y')

vim.keymap.set({'n','v'}, 'u', '"+p')
vim.keymap.set({'n','v'}, 'U', 'p')

vim.keymap.set({'n','v'}, 'q', '^')
vim.keymap.set({'n','v'}, 'Q', 'gg^')
vim.keymap.set({'n','v'}, 'p', '$')
vim.keymap.set({'n','v'}, 'P', 'G$')

vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('n', ';', ':')

vim.keymap.set({'n','v'}, "I", "3k")
vim.keymap.set({'n','v'}, "K", "3j")

vim.keymap.set("n", "<A-i>", ":m .-2<CR>==")
vim.keymap.set("n", "<A-k>", ":m .+1<CR>==")
vim.keymap.set("v", "<A-i>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '>+1<CR>gv=gv")

vim.keymap.set('n', '<CR>', 'a<CR><ESC>')

vim.keymap.set('n', '!', 'magg=G`a')
vim.keymap.set('n', '@', '=')

--Directory Navigation

vim.keymap.set({'n','v'}, '<C-n>', ':NvimTreeToggle<CR>')
vim.keymap.set({'n','v'}, '<leader>n', ':NvimTreeFocus<CR>')

--Pane Navigation - Tmux Navigator

vim.keymap.set('n', '<C-j>', ':TmuxNavigateLeft<CR>') -- Navigate Left
vim.keymap.set('n', '<C-k>', ':TmuxNavigateDown<CR>') -- Navigate Down
vim.keymap.set('n', '<C-i>', ':TmuxNavigateUp<CR>') -- Navigate Up
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>') -- Navigate Right

--Window Management

vim.keymap.set('n', '<leader>sv', ':vsplit<CR>') -- Split Vertically
vim.keymap.set('n', '<leader>sh', ':split<CR>') -- Split Horizontally
vim.keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>') -- Split Vertically

--Comments
vim.api.nvim_set_keymap('n', "<C-_>", "gcc<ESC>", {noremap = false})
vim.api.nvim_set_keymap('v', "<C-_>", "gcc<ESC>", {noremap = false})

--Indenting
vim.keymap.set('v', "<", "<gv")
vim.keymap.set('v', ">", ">gv")
