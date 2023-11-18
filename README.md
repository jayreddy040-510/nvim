# quickstart
1. clone repo into ~/.config/
2. fight through errors (these will be fixed soon), get to /lua/j/packer.nvim
3. remove all packages after base packer install, save these to buffer of choice, source file with :so, run :PackerSync
2. paste packages from buffer back into packer.nvim, :so and :PackerSync twice - first time will get hung up on color scheme
3. check to make sure all your :Mason packages are downloaded for formatter and lsp
