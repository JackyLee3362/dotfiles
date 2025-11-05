-- 激活 nvim tree 以后
-- :h nvim-tree-opts 查看配置项
return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    opts = {
        actions = {
            open_file = {
                -- 打开文件后关闭
                -- quit_on_open = true
            }
        }
    },
    keys = {
        -- { "<leader>uf",  ":NvimTreeToggle<CR>"},
        { "<leader><leader>e",  ":NvimTreeToggle<CR>"},
        { "<C-S-E>",  ":NvimTreeToggle<CR>"}
    },
    -- a 新建文件
    -- y 复制文件
    -- x 剪贴文件
    -- p 粘贴文件
    -- r 重命名
}
