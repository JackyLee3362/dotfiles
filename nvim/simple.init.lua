-- opt 作用域全局
-- wo 作用域当前窗口
-- bo 作用域是缓冲区

-- 编码方式 utf8
vim.g.encoding = "UTF-8"
vim.opt.fileencoding = "UTF-8"

-- hjkl 移动时光标周围保留8行
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- 显示行号
vim.wo.number = true
-- 使用相对行号
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线
-- vim.wo.colorcolumn = "160"
-- 代码最长的长度
vim.opt.colorcolumn = "80"

-- 缩进字符
vim.opt.tabstop = 4
-- vim.bo.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftround = true

-- >> << 时移动长度
vim.opt.shiftwidth = 0
vim.bo.shiftwidth = 0

-- 空格替代制表符
vim.opt.expandtab = true
vim.bo.expandtab = true

-- 新行对齐当前行
vim.opt.autoindent = true
vim.bo.autoindent = true
vim.opt.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 搜索不要高亮
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- 命令模式行高
vim.opt.cmdheight = 1
-- 自动加载外部修改
vim.opt.autoread = true
-- vim.bo.autoread = true

-- 禁止折行
vim.wo.wrap = false
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.opt.whichwrap = "<,>,[,]"
-- 允许隐藏被修改过的buffer
vim.opt.hidden = true
-- 鼠标支持
vim.opt.mouse = "a"
-- 禁止创建备份文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
-- smaller updatetime
vim.opt.updatetime = 300
vim.opt.timeoutlen = 1000
-- 分割屏幕设置
vim.opt.splitbelow = true
vim.opt.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.opt.background = "dark"
vim.opt.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.opt.list = false
vim.opt.listchars = "space:·,tab:>-"

vim.opt.wildmenu = false
vim.opt.wildmode = "longest"
vim.opt.shortmess = vim.o.shortmess .. "c"
-- 补全显示10行
vim.opt.pumheight = 13
vim.opt.clipboard = "unnamedplus"

-- 不需要显示状态信息
-- lualine 已经显示
vim.opt.showmode = false
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