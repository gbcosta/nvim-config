-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'vim-airline/vim-airline'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

  use({
	  'Abstract-IDE/Abstract-cs',
	  as = 'Abstract-cs',
	  config = function()
		  vim.cmd('colorscheme abscs')
	  end
  })

  use({
	  'mhartington/oceanic-next',
	  as = 'oceanic-next',
	  config = function()
		  vim.cmd('colorscheme OceanicNext')
	  end
  })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({
        "roobert/tailwindcss-colorizer-cmp.nvim",
        -- optionally, override the default options:
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,
            })
        end
    })

    use({
        "jackMort/ChatGPT.nvim",
        config = function()
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                    run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

	   -- Autocompletion
	   {'hrsh7th/nvim-cmp'},     -- Required
	   {'hrsh7th/cmp-nvim-lsp'}, -- Required
	   {'L3MON4D3/LuaSnip'},     -- Required
	   {'hrsh7th/cmp-buffer'},
	   {'hrsh7th/cmp-path'},


        }
    }


end)

