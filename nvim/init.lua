require("core.basic")
require("core.keymaps")
require("core.autocmd")
require("core.lazy")

if vim.g.vscode then
    -- VSCode 拓展
    require("lazy").setup({
        spec = {
            { import = "extension" },
        },
    })
    require("core.vs")
    print("hello, vscode, I'm neovim")
else
    -- 普通 neovim
    require("lazy").setup({
        spec = {
            { import = "plugins" },
        },
    })
    print("hello, neovim...")
end