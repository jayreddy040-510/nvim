-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.3",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Color scheme = onedark "warmer" variant
    use("navarasu/onedark.nvim")
    require("onedark").setup({
        style = "warmer",
    })
    require("onedark").load()

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

    -- Harpoon
    use("theprimeagen/harpoon")

    -- Undotree
    use("mbbill/undotree")

    -- Fugitive for git integration
    use("tpope/vim-fugitive")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },             -- Required
            { "williamboman/mason.nvim" },           -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },     -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "L3MON4D3/LuaSnip" },     -- Required
        },
    })

    -- Formatter
    require("packer").use({ "mhartington/formatter.nvim" })

    -- Markdown Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })

    --	use({
    --		"github/copilot.vim",
    --		config = function()
    --			-- options
    --		end,
    --	})

    -- Indent blanklines
    use "lukas-reineke/indent-blankline.nvim"

    -- Bottom status bar (lualine)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
end)
