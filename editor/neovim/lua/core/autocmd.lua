vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        print("Insert Mode!")
    end,
    once = true,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.bo.tabstop = 2
        vim.bo.shiftwidth = 0
        vim.wo.colorcolumn = "120"
        print("Open python!")
    end,
    once = true,
})

-- 自定义事件都是 VeryLazy 的不同 pattern
-- vim.api.nvim_create_autocmd("User", {
--     pattern = "MyVeryLazy",
-- })
