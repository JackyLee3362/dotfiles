------------------------ 全局设置 ------------------------
-- 设置 leader 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = {noremap = true, silent = true}

-- 设置无用
vim.keymap.set({"n", "v"}, "s", "<nop>", opt)
vim.keymap.set({"n", "v"}, "t", "<nop>", opt)

------------------------ 行内移动 ------------------------
-- $: 移动最后一个字符
-- g_: 移动最后一个非空白字符
vim.keymap.set({"n", "v"}, "H", "^", opt)
vim.keymap.set({"n", "v"}, "L", "g_", opt)

------------------------ 行间移动 ------------------------
vim.keymap.set({"n", "v"}, "J", "<C-d>", opt)
vim.keymap.set({"n", "v"}, "K", "<C-u>", opt)

------------------------ 增强按键 ------------------------
-- hjkl 平替(super-h, super-j, super-k, super-l)
---- vim.keymap.set({"n", "v"}, "sh", "H", opt)
---- vim.keymap.set({"n", "v"}, "sl", "L", opt)
-- 和 :join 区别是 :join 合并后光标会乱跑
-- vim.keymap.set({"n", "v"}, "sj", "<Cmd>join<CR>", opt)
vim.keymap.set({"n", "v"}, "sj", "mzJ`z", opt)
-- vim.keymap.set({"n", "v"}, "sk", "K", opt)
-- 复制
-- vim.keymap.set({"n", "v"}, "yL", "yg_", opt)
-- 粘贴(super-p)
vim.keymap.set({"n", "v"}, "sp", '"0p', opt)

------------------------ 控制按键 ------------------------
-- 撤销
vim.keymap.set({"n", "v", "i"}, "<C-z>", "<Cmd>undo<CR>", opt)

-- Buffer 跳转 window 是显示 buffer 的，tag 是 window 的集合
-- :buffers 查看所有 buffers
-- :buffer 1 跳转到指定 buffer
vim.keymap.set({"n", "v"}, "<PageUp>", ":bprevious<CR>")
vim.keymap.set({"n", "v"}, "<PageDown>", ":bnext<CR>")

-- 分屏操作
-- vim.keymap.set({"n", "v"}, "sh", ":split<CR>", opt)
-- vim.keymap.set({"n", "v"}, "sv", ":vsplit<CR>", opt)
-- <C-w>hjkl 移动
-- <C-w>c 关闭当前窗口
-- <C-w>o 关闭所有其他窗口

------------------------ 测试按键 ------------------------
-- vim.keymap.set("n", "<C-a>b", ":lua print('hello world')<CR>", {silent = true})
-- vim.keymap.set({"n", "v"}, "<C-w>", ":bdelete<CR>" , opt)