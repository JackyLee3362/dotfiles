return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    local rainbow = require("rainbow-delimiters")

    require("rainbow-delimiters.setup").setup({
      -- 【关键】排除不需要彩虹括号的缓冲区，修复 nvim-tree 报错
      filetypes = {
        ["NvimTree"] = false,
        ["lazygit"] = false,
        ["toggleterm"] = false,
        ["TelescopePrompt"] = false,
      },

      -- 颜色策略：全局默认使用 treesitter
      strategy = {
        [""] = rainbow.strategy.global,
      },

      -- 查询（大部分语言默认自带，按需开启）
      query = {
        [""] = "rainbow-delimiters",
        lua = "rainbow-delimiters",
        vim = "rainbow-delimiters",
      },

      -- 高亮分组（自定义括号颜色）
      highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      },
    })
  end,
}
