return require('packer').startup(function(use)


-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- Essentials
use 'tpope/vim-repeat'
use 'tpope/vim-surround'
use 'airblade/vim-rooter'
use 'nvim-lualine/lualine.nvim'
use 'nvim-lua/plenary.nvim'
use 'nvim-lua/popup.nvim'
use 'nvim-telescope/telescope.nvim'
use 'nvim-telescope/telescope-fzy-native.nvim'
use 'kyazdani42/nvim-tree.lua'
use 'b3nj5m1n/kommentary' -- code commentating
use 'nvim-treesitter/nvim-treesitter' -- better syntax highlighting
use 'windwp/nvim-autopairs'


-- Debugging
use 'mfussenegger/nvim-dap'
use 'rcarriga/nvim-dap-ui'

-- Completion and language servers
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-path'
use 'saadparwaiz1/cmp_luasnip'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-cmdline'
use 'onsails/lspkind-nvim'
use 'norcalli/nvim-colorizer.lua'
use 'L3MON4D3/LuaSnip'
use 'glepnir/lspsaga.nvim' -- Code actions (i.e. "Import from ___")
-- use 'jose-elias-alvarez/null-ls.nvim' -- used for saving and stuff

-- Themeing
use 'kyazdani42/nvim-web-devicons'
use 'ful1e5/onedark.nvim'
use 'akinsho/bufferline.nvim'
use 'lewis6991/satellite.nvim'
use 'tiagovla/tokyodark.nvim'
use 'folke/tokyonight.nvim'
use 'folke/todo-comments.nvim'


end)
