local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- the package manager
  use 'wbthomason/packer.nvim'
  -- nice file search
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- a fast status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- colorschemes
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use('folke/tokyonight.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  -- tpope
  use('tpope/vim-repeat')
  use('tpope/vim-eunuch')
  use('tpope/vim-surround')
  use('tpope/vim-fugitive')
  use('tpope/vim-sensible')
  -- tmux interoperation (c-h, c-j, ...)
  use('christoomey/vim-tmux-navigator')
  -- commenting
  use('scrooloose/nerdcommenter')
  -- File browser
  use('scrooloose/nerdtree')
  -- auto close () or ''
  use('jiangmiao/auto-pairs')
  -- Python objects if, af, ic, ac
  use('jeetsukumaran/vim-pythonsense')
  -- Markdown highlighting
  use('plasticboy/vim-markdown')
  -- Python inline SQL highlighting
  use('MathSquared/vim-python-sql')
  
end)

