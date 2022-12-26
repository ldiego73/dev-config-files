### Install Neo Vim

```bash
brew install neovim
```

### Keyboard

```
0                               => beginning of line
ALT + a                         => End of line and edit
j                               => next line
k                               => prev line
l                               => next column
h                               => prev column
G                               => end of file
gg                              => start of file
V                               => select line
Vj                              => select multiple lines


CTRL + o + 0                    => Edition mode, beginning of line
CTRL + o + $                    => Edition mode, end of line

u                               => Go back
dw                              => Remove line

CTRL + h                        => Left
CTRL + j                        => Down
CTRL + k                        => Up
CTRL + l                        => Right
CTRL + \                        => Previous split

ys + w + <char>                 => Add character in the word
ds + <char>                     => Remove character in the word
cs + <char-prev> + <char-new>   => Change character in the word

yiw                             => Copy the current word
yy                              => Copy the current line
dd                              => Cut the current line
p                               => Paste
vw + [w,j,k,h,l]                => Select text
gcc                             => Comment Line
gc + <number> + j               => Comment paragraph
:%s/<word>/<replace>/g          => Search and replace text
:%s/<word>/<replace>/gi         => Search and replace text case insensitive
:%s/<word>/<replace>/gc         => Search and replace with confirmation
```
