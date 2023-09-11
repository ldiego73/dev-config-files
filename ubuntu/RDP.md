# Remote Desktop Protocol

## Install

```bash
sudo apt install xrdp ubuntu-desktop xfconf
```

### Configuración

`sudo vi /etc/xrdp/xrdp.ini`

```bash
max_bpp=16
xserverbpp=16
use_compression=yes
tcp_send_buffer_bytes=4194304
```

`sudo vi /etc/xrdp/xrdp.ini`

```bash
KillDisconnected=true
DisconnectedTimeLimit=0
```

Increase the corresponding sysctl limit to 2x the requested buffer size:
```bash
sudo sysctl -w net.core.wmem_max=8388608
```

Disabling Compositing
```bash
xfconf-query --channel=xfwm4 --property=/general/use_compositing --type=bool --set=false --create
```

Disabling Gnome Animations
```bash
gsettings set org.gnome.desktop.interface enable-animations false
```

Enable password
```bash
sudo passwd $USER
```


## Restart

```bash
sudo systemctl restart xrdp
sudo reboot
```