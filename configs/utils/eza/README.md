# eza

## Install

```bash
brew install eza
```

**Configuration**

Add the follow command in your profile `~/.bashrc` o `~/.zshrc`

```bash
alias ls='eza --long --icons --no-permissions --no-user --git --time-style long-iso --time=modified --group-directories-first -a' 
alias tree='eza --tree'
```

**Reload or apply changes**

```bash
source ~/.bashrc
```

o

```bash
source ~/.zshrc
```
