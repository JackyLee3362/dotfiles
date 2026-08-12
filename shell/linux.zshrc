# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(z aliases zsh-vi-mode zsh-autosuggestions zsh-syntax-highlighting )
# 配置 zsh-auto-suggest 策略: 支持历史和子命令补全
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias
export TLDR_LANGUAGE="zh"
export TLDR_CACHE_ENABLED=1

# pipx 安装路径
export PATH="${HOME}/.local/bin:$PATH"

alias nv="nvim"
alias vi="nvim"
alias vim="nvim"
alias init-bash="source ~/.bash_profile"

# yazi 配置 from 官网
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

# 配置 brew 非自动升级
export HOMEBREW_NO_AUTO_UPDATE=1

# 配置 flutter 国内源
export PUB_HOSTED_URL=https://mirrors.tuna.tsinghua.edu.cn/dart-pub
export FLUTTER_STORAGE_BASE_URL=https://mirrors.tuna.tsinghua.edu.cn/flutter

# 配置 Python 环境变量
export PYTHONPATH=src

# 对于部分需要单独配置的环境变量，在 secret 中设置
source ~/.secret.zshrc
# export MYSQL_USERNAME=foo
# export MYSQL_PASSWORD=bar

# bun completions
[ -s "/Users/jackylee/.bun/_bun" ] && source "/Users/jackylee/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# 增加 rust-cargo 依赖
. "$HOME/.cargo/env"

