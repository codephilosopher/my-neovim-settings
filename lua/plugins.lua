return require('packer').startup(function(use)
	-- Configuration is going here
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	-- plugins for code completion
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'

	-- plugins for nvim-web-devicons
	use 'nvim-tree/nvim-web-devicons'

	--Nvimtree for file exploring
	use {
		'nvim-tree/nvim-tree.lua',
		require = {
			'nvim-tree/nvim-web-devicons',
		}
	}

	--DAP for debugging
	use 'mfussenegger/nvim-dap'
end)


