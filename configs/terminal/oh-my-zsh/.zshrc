# Starship
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls='eza --long --icons --no-permissions --no-user --git --time-style long-iso --time=modified --group-directories-first -a' 
alias tree='eza --tree'
alias cat='bat'

# CocoaPods
alias pod="arch -x86_64 pod"

# fnm
# create before dir: mkdir $HOME/.fnm
eval "$(fnm env --use-on-cd)"

# android
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# Postgres
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@15/lib/pkgconfig"
export PATH="$PATH:/opt/homebrew/opt/postgresql@15/bin"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Anaconda
export ANACONDA=/opt/homebrew/anaconda3/bin
export PATH="$PATH:$ANACONDA"

# colima
export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"

# pulumi
export PULUMI_CONFIG_PASSPHRASE_FILE="$HOME/.pulumi/passphrase.txt"

# golang
export GO_PATH='/Users/luisdiego/go'
export PATH="$PATH:$GO_PATH/bin"

