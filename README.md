## Install
````
cd ~/.config
git clone git@github.com:Flynsky/nvim-config.git
mv ./nvim-config ./nvim
````
## Windof
add in init.lua:
````
vim.opt.shell = '"C:/Program Files/Git/bin/bash.exe"'
vim.opt.shellcmdflag = "-c"
````
Install Tree:
````
winget install GnuWin32.Tree
````
