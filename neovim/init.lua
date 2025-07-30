require("core.basic")
require("core.keymaps")
require("core.autocmd")
require("core.lazy")

if vim.g.vscode then
    -- VSCode extension
    print("hello, vscode, I'm neovim")
    require("core.vs")
    -- ordinary Neovim
end

