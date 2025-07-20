return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    opts = {
        options = {
            theme = "auto",
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
        },
        extensions = {"nvim-tree"},
        sections  = {
            lualine_b = {"branch", "diff"},
            lualine_x = {
                "filesize",
                "encoding",
                "filetype",
            },
        },
    },
    -- lualine 设计
    -- |A|B|C|              |X|Y|Z|
}
