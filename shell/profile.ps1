# 显示补全选项
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
# 列表式的历史记录补全
Set-PSReadLineOption -PredictionViewStyle ListView
# 设置别名
Set-Alias -Name w -Value where.exe
# Set-Alias -Name open -Value explorer
Set-Alias -Name vim -Value nvim
Set-Alias -Name vi -Value nvim

# 设置 tldr 环境变量
$env:TLDR_LANGUAGE="zh"
$env:TLDR_CACHE_ENABLED=1

# 设置 uv 环境变量
$env:UV_SYSTEM_PYTHON=1

# linux 定义存储用户特定的配置文件的基准目录
# 默认值是 $HOME/.config
# $env:XDG_CONFIG_HOME="$HOME/.config"

# 设置 oh-my-posh
# oh-my-posh init pwsh | Invoke-Expression
