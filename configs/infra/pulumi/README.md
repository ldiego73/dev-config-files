# pulumi

## Install

```bash
brew install pulumi
brew install pulumi/tap/esc
brew upgrade esc
```

**Configuration**

Add the follow command in your profile `~/.bashrc` o `~/.zshrc`

```bash
export PULUMI_CONFIG_PASSPHRASE_FILE="$HOME/.pulumi/passphrase.txt"
```

**Reload or apply changes**

```bash
source ~/.bashrc
```

o

```bash
source ~/.zshrc
```
