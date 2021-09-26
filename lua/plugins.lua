local execute = vim.api.nvim_command
local fn = vim.fn

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  use {'itchyny/lightline.vim'}
  use { 
    'alvarosevilla95/luatab.nvim', 
    requires='kyazdani42/nvim-web-devicons'
  }

  -- colorschemes
  use {'joshdick/onedark.vim'}
  use {'drewtempelmeyer/palenight.vim'}
  use {'ayu-theme/ayu-vim'}
  use {'morhetz/gruvbox'}
  use {'rakr/vim-one'}
  use {'mhartington/oceanic-next'}
end)
