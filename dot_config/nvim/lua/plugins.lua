return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- LSPConfig
  use 'neovim/nvim-lspconfig'

  -- LSPUI
  use { 'tami5/lspsaga.nvim', branch = 'main' }

  -- Autocompletion
  use { 'hrsh7th/cmp-nvim-lsp', branch = 'main' }
  use { 'hrsh7th/cmp-buffer', branch = 'main' }
  use { 'hrsh7th/cmp-path', branch = 'main' }
  use { 'hrsh7th/cmp-cmdline', branch = 'main' }
  use { 'hrsh7th/nvim-cmp', branch = 'main' }
  -- vsnip for autocompletion
  use { 'hrsh7th/cmp-vsnip', branch = 'main' }
  use { 'hrsh7th/vim-vsnip' }

  -- Syntax Highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Status line
  use 'nvim-lualine/lualine.nvim'

end)

