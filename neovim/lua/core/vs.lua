local vscode = require("vscode")

vim.keymap.set({"n"}, "<leader>e", function() vscode.notify('Custom message!') end)
vim.keymap.set({"n"}, "<leader>j", function() vscode.action('editor.unfoldRecursively') end)
vim.keymap.set({"n"}, "<leader>k", function() vscode.action('editor.foldRecursively') end)
-- vscode 的 api 包括
--
-- 1. 展示消息: vscode.notify("hello, neovim-vscode")
-- 2. 执行命令: vscode.action(命令id) # 可以从快捷键中复制命令id
-- 3. 获取配置: vscode.get_config("editor.fontSize")
-- 4. 设置配置: vscode.update_config("vim.insertModeKeyBindings", bindings, 'global')
