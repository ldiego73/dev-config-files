# pyenv

## Install

```bash
brew install pyenv
```

**Configuration**

Add the follow command in your profile `~/.bashrc` o `~/.zshrc`

```bash
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
```

**Reload or apply changes**

```bash
source ~/.bashrc
```

o

```bash
source ~/.zshrc
```
