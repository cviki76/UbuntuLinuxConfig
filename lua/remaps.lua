vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')


vim.keymap.set('n', 'i', 'k')
vim.keymap.set('n', 'j', 'h')
vim.keymap.set('n', 'k', 'j')
vim.keymap.set('n', 'i', 'k')
vim.keymap.set('v', 'i', 'k')
vim.keymap.set('v', 'j', 'h')
vim.keymap.set('v', 'k', 'j')
vim.keymap.set('n', 's', 'a')
vim.keymap.set('n', 'S', 'A')
vim.keymap.set('n', 'a', 'i')
vim.keymap.set('n', 'A', 'I')

vim.keymap.set('n', 'J', 'b')
vim.keymap.set('n', 'L', 'e')
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

vim.keymap.set('n', 'r', '"+y')
vim.keymap.set('n', 'R', '"+Y')
vim.keymap.set('v', 'r', '"+y')
vim.keymap.set('v', 'R', '"+Y')

vim.keymap.set('n', 'u', '"+p')
vim.keymap.set('n', 'U', 'p')
vim.keymap.set('v', 'u', '"+p')
vim.keymap.set('v', 'U', 'p')

vim.keymap.set('n', 'q', '^')
vim.keymap.set('n', 'Q', 'gg^')
vim.keymap.set('n', 'p', '$')
vim.keymap.set('n', 'P', 'G$')

vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('n', ';', ':')


vim.keymap.set("n", "<C-i>", ":m .-2<CR>==")
vim.keymap.set("n", "<C-k>", ":m .+1<CR>==")
vim.keymap.set("v", "<C-i>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '>+1<CR>gv=gv")

vim.keymap.set('n', '<CR>', 'a<CR><ESC>')


vim.keymap.set('n', '!', 'magg=G`a')
vim.keymap.set('n', '@', '=')


vim.keymap.set('n', 'h', 'I//<ESC>')
vim.keymap.set('n', 'H', 'I<Del><Del><ESC>')



