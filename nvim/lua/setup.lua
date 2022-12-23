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

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Functions utils
	use("nvim-lua/plenary.nvim")
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
	use("numToStr/Comment.nvim")
	-- File explorer
	use("nvim-tree/nvim-web-devicons")
	use("nvim-tree/nvim-tree.lua")
	-- Statusline
	use("nvim-lualine/lualine.nvim")
	-- Find files and text
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0" })
	-- Autocompletion
	use("hrsh7th/nvim-cmp")
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
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	-- Format & Linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git
	use("lewis6991/gitsigns.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
