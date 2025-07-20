-- 增强 lsp 体验
return {
    "nvimdev/lspsaga.nvim",
    cmd = "Lspsaga",
    opts = {
        finer = {
            keys = {
                toggle_or_open = "<CR>"
            }
        }
    },
    keys = {
        -- 这里是教程的配置
        { "<leader>lr", ":Lspsaga rename<CR>"},
        { "<leader>lc", ":Lspsaga code_action<CR>"},
        { "<leader>ld", ":Lspsaga goto_definition<CR>"},
        { "<leader>lh", ":Lspsaga hover_doc<CR>"},
        { "<leader>lR", ":Lspsaga finder<CR>"},
        { "<leader>ln", ":Lspsaga diagnostic_jump_next<CR>"},
        { "<leader>lp", ":Lspsaga diagnostic_jump_prev<CR>"},
        -- 以下是我自己的配置
        { "<F2>", ":Lspsaga rename<CR>"},
        { "gd", ":Lspsaga goto_definition<CR>"}, -- goto definition
        { "ge", ":Lspsaga diagnostic_jump_next<CR>"}, -- goto error
        { "gE", ":Lspsaga diagnostic_jump_prev<CR>"}, -- goto error
        { "gu", ":Lspsaga finder<CR>"}, -- goto usage
        { "<leader>d", ":Lspsaga hover_doc<CR>"},
        { "<leader>e",  ":Lspsaga code_action<CR>"},
    }
}
