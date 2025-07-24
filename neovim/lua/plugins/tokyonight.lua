return {
    "folke/tokyonight.nvim",
    opts = {
        -- style = "day"
        -- style = "moon"
    },
    config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd("colorscheme tokyonight")
    end,
    enabled = not vim.g.vscode
}
-- opt 等于 require("tokyonight").setup(opts)
