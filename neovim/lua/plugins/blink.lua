-- 代码补全插件
return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    event = "VeryLazy",
    config = true,
    opts = {
        completion = {
            documentation = {
                auto_show = true
            }
        },
        keymap = {
            preset = "super-tab",
        },
        -- 补全来源
        -- snippets 来自上面的插件
        sources = {
            default = {"path", "snippets", "buffer", "lsp"}
        }
        ,
        -- 命令行补全
        cmdline = {
            sources = function ()
                local cmd_type = vim.fn.getcmdtype()
                if cmd_type == "/" then
                    return { "buffer"}
                elseif cmd_type == ":" then
                    return { "cmdline"}
                else
                    return {}
                end
            end,
            keymap = {
                preset = "super-tab"
            }
            ,completion = {
                menu = {
                    auto_show = true
                }
            }
        }
    }
}


