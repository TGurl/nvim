local execute = vim.api.nvim_command
local fn = vim.fn

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
    		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require'nvim-tree'.setup {} end
	}
end)
