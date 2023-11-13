# tmux

## Install

```bash
brew install tmux
```

**Plugins**
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

**Configuration**

Copy the config file `.tmux.conf` to the home directory: `$HOME` or `~/`

**Reload or apply changes**
```bash
tmux source ~/.tmux.conf
```

## Keyboard

| Command                       | Description                                   |
| ----------------------------- | --------------------------------------------- |
| `tmux`                        | Start a new tmux session.                     |
| `tmux new -s name`            | Start a new session with a name.              |
| `tmux attach -t name`         | Attach to an existing session.                |
| `tmux switch -t name`         | Switch to another existing session.           |
| `tmux list-sessions`          | List all tmux sessions.                       |
| `tmux detach`                 | Detach from a tmux session.                   |
| `tmux kill-session -t name`   | Kill a tmux session.                          |
| `Ctrl-a c`                    | Create a new window.                          |
| `Ctrl-a r`                    | Rename the current window.                    |
| `Ctrl-a 0-9`                  | Switch to the specified window.               |
| `Ctrl-a n`                    | Switch to the next window.                    |
| `Ctrl-a p`                    | Switch to the previous window.                |
| `Ctrl-a \|`                   | Split the window horizontally.                |
| `Ctrl-a -`                    | Split the window vertically.                  |
| `Ctrl-a d`                    | Detach (similar to `tmux detach`).            |
| `Ctrl-a ?`                    | Show keyboard shortcuts help.                 |
| `Ctrl-a :`                    | Enter command mode.                           |