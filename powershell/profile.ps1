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