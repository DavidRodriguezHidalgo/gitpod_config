vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Themes
  use 'morhetz/gruvbox'
  use 'arcticicestudio/nord-vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- IDE
  use 'nvim-telescope/telescope.nvim'
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use 'nvim-telescope/telescope-project.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'sbdchd/neoformat'
  use 'windwp/nvim-autopairs'
  use 'ThePrimeagen/harpoon'
  use 'akinsho/bufferline.nvim'
  use "akinsho/toggleterm.nvim"
  -- use 'tveskag/nvim-blame-line'
  use 'tpope/vim-commentary'
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind-nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'

  -- Vim airline (bottom bar)
   use("nvim-lualine/lualine.nvim")
  use 'tpope/vim-rails'
  use 'tpope/vim-fugitive'

  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'slim-template/vim-slim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'folke/which-key.nvim'
  -- Sessions
  use {
  'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
       log_level = "error",
       auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end
  }
end)
