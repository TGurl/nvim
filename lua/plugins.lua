local execute = vim.api.nvim_command
local fn = vim.fn

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- lightline
  use {'itchyny/lightline.vim'}

  -- lua-tabs
  use { 
    'alvarosevilla95/luatab.nvim', 
    requires='kyazdani42/nvim-web-devicons'
  }

  -- jedi-vim
  use {'davidhalter/jedi-vim'}

  -- deoplete.nvim
  use {
    'Shougo/deoplete.nvim',
    run = ':UpdateRemotePlugins'
  }

  -- colorschemes
  use {'joshdick/onedark.vim'}
  use {'drewtempelmeyer/palenight.vim'}
  use {'ayu-theme/ayu-vim'}
  use {'morhetz/gruvbox'}
  use {'rakr/vim-one'}
  use {'mhartington/oceanic-next'}
end)
