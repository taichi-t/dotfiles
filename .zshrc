export PATH=$HOME/.nodebrew/current/bin:$PATH
export ZSH="/Users/tsujiokataichi/.oh-my-zsh"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# rbenv installが失敗する為
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"
export EDITOR=zsh
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"

#zshの指定
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
plugins=(zsh-syntax-highlighting zsh-completions)
source $ZSH/oh-my-zsh.sh

#ディレクトリ名だけでcdする
setopt auto_cd

# zsh-completionsの設定
autoload -U compinit && compinit -u

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## alias設定
alias g='git'
alias ga='git add .'
alias gb="git branch"
alias gs='git status'
alias gcb='git checkout -b'
alias gd='git diff -w'
alias la='ls -la'
alias ll='ls -l'
alias gl="git log --graph --all --abbrev-commit --date=relative --pretty=format:'%C(red)%h %C(reset)-%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)[%an] %C(bold blue)'"
alias gmemo='less ~/commands_memo/git.txt'
alias gmemoedit='vim ~/commands_memo/git.txt'
alias ps='package-size'
alias dc="docker-compose"
alias port="sudo lsof -i -P | grep 'LISTEN'"

# Kaizen
alias gcae="git commit --allow-empty -m 'NOPR:squash me [ci skip]'"

# Guthub Cli https://cli.github.com/
alias gh-create-repo='gh repo create'
alias gh-create-draft-pr='gh pr create --draft'
alias gh-create-pr='gh pr create'
alias gh-status-pr='gh pr status'

