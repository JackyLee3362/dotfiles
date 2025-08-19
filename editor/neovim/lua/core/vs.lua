local vscode = require("vscode")

-- leader 命令
-- 显示悬停
vim.keymap.set({"n"}, "<leader>i", function() vscode.action('editor.action.showHover') end)
-- 显示参数
vim.keymap.set({"n"}, "<leader>p", function() vscode.action('editor.action.triggerParameterHints') end)
-- 弹出快速修复
vim.keymap.set({"n"}, "<leader>e", function() vscode.action('editor.action.quickFix') end)
-- 收起
vim.keymap.set({"n"}, "<leader>j", function() vscode.action('editor.unfoldRecursively') end)
-- 展开
vim.keymap.set({"n"}, "<leader>k", function() vscode.action('editor.foldRecursively') end)
-- 显示 symbol
vim.keymap.set({"n"}, "<leader>o", function() vscode.action('workbench.action.gotoSymbol') end)

-- g 命令
-- 跳转 previous
vim.keymap.set({"n"}, "gh", function() vscode.action('workbench.action.navigateBack') end)
-- 跳转 next
vim.keymap.set({"n"}, "gl", function() vscode.action('workbench.action.navigateForward') end)
-- 跳转到目录
vim.keymap.set({"n"}, "gf", function() vscode.action('workbench.files.action.focusFilesExplorer') end)
-- 跳转到下一个 usage / 引用
vim.keymap.set({"n"}, "gu", function() vscode.action('editor.action.goToReferences') end)
-- 跳转到下一个实现
vim.keymap.set({"n"}, "ga", function() vscode.action('editor.action.goToImplementation') end)
-- 跳转到下一个错误
vim.keymap.set({"n"}, "ge", function() vscode.action('editor.action.marker.nextInFiles') end)


-- vscode 的 api 包括
--
-- 1. 展示消息: vscode.notify("hello, neovim-vscode")
-- 2. 执行命令: vscode.action(命令id) # 可以从快捷键中复制命令id
-- 3. 获取配置: vscode.get_config("editor.fontSize")
-- 4. 设置配置: vscode.update_config("vim.insertModeKeyBindings", bindings, 'global')
