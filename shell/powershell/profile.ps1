# 显示补全选项
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
# 列表式的历史记录补全
Set-PSReadLineOption -PredictionViewStyle ListView
# 设置别名
Set-Alias -Name w -Value where.exe
# Set-Alias -Name open -Value explorer
Set-Alias -Name init-conda -Value $env:USERPROFILE\Documents\Powershell\conda.ps1


# 设置 tldr 环境变量
$env:TLDR_LANGUAGE="zh"
$env:TLDR_CACHE_ENABLED=1

# 设置 uv 环境变量
$env:UV_SYSTEM_PYTHON=1

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
# If (Test-Path "C:\Users\JACKYLEE\scoop\apps\miniconda3\current\Scripts\conda.exe") {
#     (& "C:\Users\JACKYLEE\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
# }
#endregion

