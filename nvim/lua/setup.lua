-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost setup.lua source <afile> | PackerCompile
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

local setup = function(name)
	return string.format('require("plugins.%s")', name)
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Functions utils
	use("nvim-lua/plenary.nvim")
	use("windwp/nvim-spectre")
	-- Theme
	use("arcticicestudio/nord-vim")
	-- Control windows
	use("christoomey/vim-tmux-navigator")
	-- Maximize window
	use("szw/vim-maximizer")
	-- Add character into text o word
	use("tpope/vim-surround")
	-- Replace text
	use("inkarkat/vim-ReplaceWithRegister")
	-- Add Line(s) comment(s)
	use({ "numToStr/Comment.nvim", config = setup("comment") })
	-- File explorer
	use("nvim-tree/nvim-web-devicons")
	use({ "nvim-tree/nvim-tree.lua", config = setup("nvim-tree") })
	-- Statusline
	use({ "nvim-lualine/lualine.nvim", config = setup("lualine") })
	-- Find files and text
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", config = setup("telescope") })
	-- Autocompletion
	use({ "hrsh7th/nvim-cmp", config = setup("nvim-cmp") })
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	-- Manage LSP Servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- Configure LSP Servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main", config = setup("lsp.lspsaga") })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	-- Format & Linting
	use({ "jose-elias-alvarez/null-ls.nvim", config = setup("lsp.null-ls") })
	use("jayp0521/mason-null-ls.nvim")
	-- Symbols Outline
	use({ "simrat39/symbols-outline.nvim", config = setup("symbols-outline") })
	-- Diagnostics
	use("folke/trouble.nvim")
	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
		config = setup("treesitter"),
	})
	-- auto closing
	use({ "windwp/nvim-autopairs", config = setup("autopairs") }) -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
	-- git
	use({ "lewis6991/gitsigns.nvim", config = setup("gitsigns") })
	-- ident blankline
	use("lukas-reineke/indent-blankline.nvim")
	-- dashboard
	use({ "goolord/alpha-nvim", config = setup("alpha-nvim") })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
