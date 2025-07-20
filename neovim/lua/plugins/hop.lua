return {
    "smoka7/hop.nvim",
    opts = {
        keys = 'etovxqpdygfblzhckisuran',
        -- 3 其实是 require("hop.hint").HintPosition.END
        hint_position = 3
    },
    keys = {
        {"<leader>hp", ":HopWord<CR>", silent = true}
    }
}
