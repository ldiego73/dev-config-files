# bat

## Install

```bash
brew install bat
```

**Configuration**

Add the follow command in your profile `~/.bashrc` o `~/.zshrc`

```bash
alias cat='bat'
```

**Theme**

1. Create directory and config file
```bash
mkdir -p "$(bat --config-dir)/themes"
touch "$(bat --config-dir)/config"
```

2. Copy files

Copy `Catppuccin-macchiato.tmTheme` to `<bat-config-dir>/themes`
Copy `config` to `<bat-config-dir>`


**Reload or apply changes**

```bash
source ~/.bashrc
```

o

```bash
source ~/.zshrc
```
