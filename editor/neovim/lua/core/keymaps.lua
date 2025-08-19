-- 设置 leader 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 设置
local opt = {noremap = true, silent = true}

-- 设置无用
vim.keymap.set({"n", "v"}, "s", "<nop>", opt)
vim.keymap.set({"n", "v"}, "t", "<nop>", opt)

-- 行间移动
vim.keymap.set({"n", "v"}, "<leader>J", "J", opt)
vim.keymap.set({"n", "v"}, "<leader>K", "K", opt)

vim.keymap.set({"n", "v"}, "J", "<C-d>", opt)
vim.keymap.set({"n", "v"}, "K", "<C-u>", opt)

-- HL 平替
vim.keymap.set({"n", "v"}, "<leader>H", "H", opt)
vim.keymap.set({"n", "v"}, "<leader>L", "L", opt)

vim.keymap.set({"n", "v"}, "H", "^", opt)
vim.keymap.set({"n", "v"}, "L", "$", {silent = true, noremap = false})

-- 复制
-- vim.keymap.set({"n", "v"}, "yL", "y$", opt)

-- 粘贴
vim.keymap.set({"n", "v"}, "sp", "\"0p", opt)

-- 撤销
vim.keymap.set({"n", "v", "i"}, "<C-z>", "<Cmd>undo<CR>", opt)

-- 测试按键
vim.keymap.set("n", "<C-a>b", ":lua print('hello world')<CR>", {silent = true})

-- 系统快捷键 ctrl
vim.keymap.set({"n", "i", "v"}, "<leader>w", ":bdelete<CR>" , opt)
