vim.g.mapleader = " "
vim.keymap.set("n", "|", vim.cmd.Ex)

-- BEGINNING OF MY REMAPS --
-- remap basic navigation keys in normal mode
vim.keymap.set("n", "l", "h")
vim.keymap.set("n", "ñ", "j")
vim.keymap.set("n", "{", "k")
vim.keymap.set("n", "}", "l")

-- remap basic navigation keys in visual mode
vim.keymap.set("v", "l", "h")
vim.keymap.set("v", "ñ", "j")
vim.keymap.set("v", "{", "k")
vim.keymap.set("v", "}", "l")

-- enters normal mode and saves the file on Control + S
vim.keymap.set("i", "<C-s>", "<Esc>:update<CR>")

-- saves on Control + S
vim.keymap.set("n", "<C-s>", ":update<CR>")

-- remap undo and redo
vim.keymap.set("n", "'", "u")
vim.keymap.set("n", "<C-\'>", "<C-r>")

-- remap back and forth jumps 
vim.keymap.set("n", "q", "b")
vim.keymap.set("n", "W", "$")
vim.keymap.set("n", "Q", "0")

-- tab indentation
vim.api.nvim_set_keymap('n', '<Tab>', '>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<', { noremap = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true })

-- END OF MY CUSTOM REMAPS --

vim.keymap.set("v", "Ñ", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "[", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
 vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
