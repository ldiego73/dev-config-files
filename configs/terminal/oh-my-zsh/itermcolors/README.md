# terminal

## Pre requisites

**`Homebrew`**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**`Oh My Zsh`**

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**`Dependencies`**

```bash
brew install --cask iterm2
brew install git
```

**`fonts`**

```bash
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

## Configuration

```bash
source ~/.zshrc
```

### VSCode
Update VSCode Terminal Font

```json
"terminal.integrated.fontFamily": "Hack Nerd Font Mono",
```

### iTerm2
Increase Terminal Font Size:

1. Open iTerm2 preferences
2. Go to Profiles > Text
3. I increase my font size to about 12px or more.

Change iTerm2 Colors with Custom Theme:

1. Open iTerm2
2. Download my color profile by running the following command (will be added to Downloads folder):

```bash
curl https://raw.githubusercontent.com/ldiego73/dotfiles/main/configs/terminal/itermcolors/<name>.itermcolors --output ~/Downloads/develop.itermcolors
```

3. Open iTerm2 preferences
4. Go to Profiles > Colors
5. Import the downloaded color profile (develop)
6. Select the color profile (develop)

## Plugins

### Utils

```bash
brew install ripgrep
brew install fzf
```

### zsh-autosuggestions
Install:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### zsh-syntax-highlighting
Install:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Edit the `~/.zshrc` and add the plugins:

```ini
plugins=(git python vscode zsh-autosuggestions zsh-syntax-highlighting)
```

**Reload or apply changes**

```bash
source ~/.zshrc
```

### Install Java from Mac M1

```bash
brew tap homebrew/cask-versions
brew install --cask zulu11
```

### Configure Oh My Zsh

```bash
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

alias pod="arch -x86_64 pod"

# npm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# python
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 

eval "$(pyenv init --path)" 
eval "$(pyenv init -)"

# android

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# Pulumi
export PULUMI_CONFIG_PASSPHRASE_FILE=$HOME/.pulumi/passphrase.txt

# Docker
# ~/.rd/bin/rdctl shell sudo /etc/init.d/docker restart
export DOCKER_HOST=unix://$HOME/.rd/docker.sock

# Node
export NODE_OPTIONS=--max-old-space-size=4096
```
