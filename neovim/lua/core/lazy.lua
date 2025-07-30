local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git", 
        "clone",  
        "--filter=blob:none", 
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)


if vim.g.vscode then
    -- VSCode extension
    require("lazy").setup({
        spec = {
            { import = "extension" },
        },
    })
    -- ordinary Neovim
else
    require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
})
end

