return {
    "akinsho/bufferline.nvim",
    -- lazy 只会对设置了 opt/config 的插件 setup
    -- :h bufferline-configuration
    -- version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(_, _, diagnostic_dict, _)
            local indicator = " "
            for level, number in pairs(diagnostic_dict) do
                local symbol
                if level == "error" then
                    symbol = ""
                elseif level == "warning" then
                    symbol = ""
                else
                    symbol = ""
                end
                indicator = indicator .. number .. symbol
            end
            return indicator
        end
        }
    },
    keys = {
        {"<leader>bh", ":BufferLineCyclePrev<CR>", silent = true },
        {"<leader>bl", ":BufferLineCycleNext<CR>", silent = true },
        {"<leader>bd", ":bdelete<CR>", silent = true },
        {"<leader>bo", ":BufferLinePickCloseOthers<CR>", silent = true },
        {"<leader>bp", ":BufferLinePick<CR>", silent = true },
        {"<leader>bc", ":BufferLinePickClose<CR>", silent = true },
    },
    -- event: 事件触发时加载
    -- cmd: 某个命令执行时加载
    -- ft: 当 buffer 为特定文件时加载
    -- keys: 当触发快捷键时加载，如果不存在则创建快捷键
    lazy = false,
    enabled = not vim.g.vscode
}
