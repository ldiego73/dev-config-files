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

** Enable docker buildx **

```bash
brew install docker-buildx
# Follow the caveats mentioned in the install instructions:
# mkdir -p ~/.docker/cli-plugins
# ln -sfn $(which docker-buildx) ~/.docker/cli-plugins/docker-buildx
docker buildx install # To keep using the `docker build` install but with buildkit: https://docs.docker.com/engine/reference/commandline/buildx_install/
```
