local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
  	"GCBallesteros/jupytext.nvim",
  	config = true,
  	-- Depending on your nvim distro or config you may need to make the loading not lazy
  	-- lazy=false,
	},
	{ "luk400/vim-jukit"
	},
	{
    "hrsh7th/nvim-cmp",
    config = function()
      require('cmp').setup({
		completion = {
		  keyword_length = 1,
		}, sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        }
      })
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    after = "nvim-cmp"
  },
  {
    "neovim/nvim-lspconfig",
    after = "cmp-nvim-lsp",
    config = function()
      local lspconfig = require'lspconfig'
      lspconfig.pyright.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      })
      lspconfig.jdtls.setup({
	cmd = { '/usr/bin/jdtls' },
	on_attach = function(client, bufnr)
			print('jdtls is attached to buffer ' .. bufnr)
	end,
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  })
    end
  },
  {
    "hrsh7th/cmp-buffer",
    after = "nvim-cmp"
  },
  {
    "micangl/cmp-vimtex"
  },
  {
	  "lervag/vimtex",
  },
  {
		  "xiyaowong/transparent.nvim"
  },
  {
		  "neovim/nvim.net"
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {
		  "nvim-lua/plenary.nvim"
  },
  {
		  "nvim-telescope/telescope.nvim", tag = '0.1.5',
		  dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
		  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
  },
  {
		  "navarasu/onedark.nvim"
  },
  {
		  "nyoom-engineering/oxocarbon.nvim"
  },
  {
		  "luisiacc/gruvbox-baby"
  },
  {
		  "mbbill/undotree"
  },
  {
		  "mikelue/vim-maven-plugin"
  },
  {
		  "karb94/neoscroll.nvim"
  },
  {
		  "nvim-lualine/lualine.nvim",
		  dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
		"hrsh7th/vim-vsnip"
  },
})
