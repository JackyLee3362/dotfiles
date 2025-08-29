return {
    "mason-org/mason.nvim",
    -- event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
    },
    opts = {},
    config = function(_, opts)
        require("mason").setup(opts)

        local registry = require("mason-registry")

        -- 定义函数，注册 LSP
        local function install(name)
            local s, p = pcall(registry.get_package, name)
            if s and not p:is_installed() then
                p:install()
            end
        end

        local lspconfig = require("lspconfig")
        local mason_lspconfig_table = require("mason-lspconfig").get_mappings()
        -- linux:  mason_to_lspconfig
        -- win  :  package_to_lspconfig
        local mason_lspconfig_mapping = mason_lspconfig_table.package_to_lspconfig
        if mason_lspconfig_mapping == nil then
            mason_lspconfig_mapping = mason_lspconfig_table.mason_to_lspconfig
        end

        

        local installed_packages = registry.get_installed_package_names()

        local function setup(name, config)
            local nvim_lsp = mason_lspconfig_mapping[name]
            -- 主要是告诉 LSP 服务器支持什么特性，为了优化性能
            config.capabilities = require("blink.cmp").get_lsp_capabilities()
            config.on_attach = function (client)
                -- 禁用 LSP 服务器那边的格式化功能
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
            end
        end

        

        local installed_packages = registry.get_installed_package_names()

        local function setup(name, config)
            local nvim_lsp = mason_lspconfig_mapping[name]
            if not nvim_lsp then
                print("Error: Server not found in mapping for " .. name)
                return
            end
            -- 主要是告诉 LSP 服务器支持什么特性，为了优化性能
            config.capabilities = require("blink.cmp").get_lsp_capabilities()
            config.on_attach = function (client)
                -- 禁用 LSP 服务器那边的格式化功能
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
            end
            -- 为了获取真实的名字，比如 lua-language-server --> lua_ls
            vim.lsp.config(nvim_lsp, config)
            -- 由于 LspStart 不支持，关闭 event 的 VeryLazy 选项
            -- vim.cmd("LspStart")
        end
        local services = {
            ["lua-language-server"] = {
                settings = {
                    Lua = {
                        diagnostics = {
                            -- 新增 vim 全局变量
                            globals = { "vim" }
                        }
                    }
                }
            },
            pyright = {},
            -- ["html-lsp"] = {},
            -- ["css-lsp"] = {},
            -- ["typescript-language-server"] = {},
            -- ["emmet-ls"] = {}
        }
        for server, config in pairs(services) do
            setup(server, config)
        end
        vim.diagnostic.config({
            -- 显示错误信息
            virtual_text = true,
            -- 实时显示错误信息
            update_in_insert = true,
            -- 行级显示错误信息: 不建议
            -- virtual_lines = true,
        })
    end,
}

-- 使用 :LspInfo 检查 LSP 是否启动
