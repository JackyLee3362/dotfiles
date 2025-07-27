return {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    -- 告诉 lazy tree-sitter 的模块名，因为 Lazy 猜不出
    branch = "main",
    dependencies = { "hiphish/rainbow-delimiters.nvim" },
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
             "lua", "toml"
        },
        highlight = {enable = true}
    },
    -- 使用 InspectTree
    -- 可以使用 TSInstallInfo 查看已经安装的模块
    -- 使用 TSBufToggle highlight
    -- 使用 TSBufEnable highlight
    config = function(_, opts)
        require("nvim-treesitter").setup(opts)
    end,
}
