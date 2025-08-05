local vscode = require("vscode")

vim.keymap.set({"n"}, "<leader>e", function() vscode.notify('Custom message!') end)
vim.keymap.set({"n"}, "<leader>j", function() vscode.action('editor.unfoldRecursively') end)
vim.keymap.set({"n"}, "<leader>k", function() vscode.action('editor.foldRecursively') end)
vim.keymap.set({"n"}, "gh", function() vscode.action('workbench.action.navigateBack') end)
vim.keymap.set({"n"}, "gl", function() vscode.action('workbench.action.navigateForward') end)
vim.keymap.set({"n"}, "gf", function() vscode.action('workbench.files.action.focusFilesExplorer') end)
vim.keymap.set({"n"}, "gu", function() vscode.action('editor.action.goToReferences') end)
vim.keymap.set({"n"}, "ga", function() vscode.action('editor.action.goToImplementation') end)
vim.keymap.set({"n"}, "<leader><leader>o", function() vscode.action('workbench.action.gotoSymbol') end)

-- vscode 的 api 包括
--
-- 1. 展示消息: vscode.notify("hello, neovim-vscode")
-- 2. 执行命令: vscode.action(命令id) # 可以从快捷键中复制命令id
-- 3. 获取配置: vscode.get_config("editor.fontSize")
-- 4. 设置配置: vscode.update_config("vim.insertModeKeyBindings", bindings, 'global')
