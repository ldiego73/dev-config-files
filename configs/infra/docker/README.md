# docker

## Install

```bash
brew install docker
brew install kubectl
brew install colima
```

**Configuration**

Add the follow command in your profile `~/.bashrc` o `~/.zshrc`

```bash
export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"
```

**Reload or apply changes**

```bash
source ~/.bashrc
```

o

```bash
source ~/.zshrc
```
