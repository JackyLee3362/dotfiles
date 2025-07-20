require("core.basic")
require("core.keybinding")
require("core.autocmd")

if vim.g.vscode then
    -- VSCode extension
    print("hello, vscode, I'm neovim")
    require("core.vs")
else
    -- ordinary Neovim
    require("core.lazy")
end

