# how to install jay's setup

1. git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

2. install Packer - goto /nvim/lua/j/packer.lua and comment out everythig other
than packer install if necessary

3. :Mason and install needed LSP's and formatters, check /nvim/after/plugin/format.lua
for needed formatters
