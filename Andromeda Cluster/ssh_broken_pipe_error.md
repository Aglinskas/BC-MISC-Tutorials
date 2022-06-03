if you get client_loop: send disconnect: Broken pipe

On your computer in .ssh/config set these values:

```
ServerAliveInterval 60
ServerAliveCountMax = 360
set autologout=360
```
