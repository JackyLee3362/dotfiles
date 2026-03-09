return {
    "easymotion/vim-easymotion",
    enabled = not vim.g.vscode,
    config = function()
      vim.g.EasyMotion_smartcase = 1
    end,
}