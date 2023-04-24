### Install Homebrew

Open up a terminal window and install homebrew with the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install iTerm2

```bash
brew install --cask iterm2
```

### Install Git

```bash
brew install git
```

### Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install PowerLevel10K Theme for Oh My Zsh

```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Now that it's installed, edit the `~/.zshrc` and change the value of ZSH_THEME

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Apply this change:

```bash
source ~/.zshrc
```

### Install Meslo Nerd Font

```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### Update VSCode Terminal Font

```json
"terminal.integrated.fontFamily": "Hack Nerd Font Mono",
```

### Configure PowerLevel10K

```bash
p10k configure
```

### Increase Terminal Font Size

1. Open iTerm2 preferences
2. Go to Profiles > Text
3. I increase my font size to about 12px or more.

### Change iTerm2 Colors with Custom Theme

1. Open iTerm2
2. Download my color profile by running the following command (will be added to Downloads folder):

```bash
curl https://raw.githubusercontent.com/ldiego73/dotfiles/main/configs/terminal/itermcolors/develop.itermcolors --output ~/Downloads/develop.itermcolors
```

3. Open iTerm2 preferences
4. Go to Profiles > Colors
5. Import the downloaded color profile (develop)
6. Select the color profile (develop)

### Install ZSH Plugins

Install zsh-autosuggestions:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Install zsh-syntax-highlighting:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Edit the "~/.zshrc" and add the plugins:

```ini
plugins=(git python vscode zsh-autosuggestions zsh-syntax-highlighting)
```

Reload Oh My Zsh

```bash
source ~/.zshrc
```

### Install utils

```bash
brew install bat
brew install ripgrep
brew install lazygit
brew install fzf
```

### Install Java from Mac M1

```bash
brew tap homebrew/cask-versions
brew install --cask zulu11
```

### Configure Oh My Zsh

```bash
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Optional
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
```
