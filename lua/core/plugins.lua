local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { 'phaazon/hop.nvim' }, 
  { "nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = { 
		"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
	  }
  },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'neovim/nvim-lspconfig' },
  { "williamboman/mason.nvim" },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'jose-elias-alvarez/null-ls.nvim' },
  -- { "folke/tokyonight.nvim" },
  { 'catppuccin/nvim', name = "catppuccin", priority = 1000},
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/nvim-cmp' },
  { 'windwp/nvim-autopairs' },
  { 'akinsho/bufferline.nvim', version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  { 'numToStr/Comment.nvim' },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'nvim-lualine/lualine.nvim' },
  { 'lewis6991/gitsigns.nvim' },
  { 'akinsho/toggleterm.nvim', version = "*", config = true},
  -- { 'vim-scripts/dbext.vim' }
  -- { 'iamcco/markdown-preview.nvim'}
  { 'kristijanhusak/vim-dadbod-ui',
      dependencies = {
        { 'tpope/vim-dadbod', lazy = true },
        { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
      },
      cmd = {
        'DBUI',
        'DBUIToggle',
        'DBUIAddConnection',
        'DBUIFindBuffer',
      },
      init = function()
        -- Your DBUI configuration
        vim.g.db_ui_use_nerd_fonts = 1
      end,
  }
})
