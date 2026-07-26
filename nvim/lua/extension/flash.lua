return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    -- normal/visual/operator-pending 模式按下 s → 启动全局字符跳转（对标 easymotion）
    { "ss", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },

    -- todo 其余还不太会，先注释
    -- 大写 S：基于语法树跳转/选中代码块（函数、if、循环等）
    -- { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
