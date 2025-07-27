require("core.basic")
require("core.keymaps")
require("core.autocmd")

if vim.g.vscode then
    -- VSCode extension
    print("hello, vscode, I'm neovim")
    require("vs.options")
    require("vs.packer")
else
    -- ordinary Neovim
    require("core.lazy")
end

