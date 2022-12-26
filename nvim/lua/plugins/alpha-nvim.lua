local status, alpha = pcall(require, "alpha")

if not status then
	return
end

local dashboard = require("alpha.themes.dashboard")

-- URL: https://patorjk.com/software/taag/#p=display&v=0&f=ANSI%20Shadow&t=NEOVIM
local header = {
	"                                                   ",
	" ██╗     ██████╗  ██████╗ ██████╗ ██████╗ ███████╗ ",
	" ██║     ██╔══██╗██╔════╝██╔═══██╗██╔══██╗██╔════╝ ",
	" ██║     ██║  ██║██║     ██║   ██║██║  ██║█████╗   ",
	" ██║     ██║  ██║██║     ██║   ██║██║  ██║██╔══╝   ",
	" ███████╗██████╔╝╚██████╗╚██████╔╝██████╔╝███████╗ ",
	" ╚══════╝╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝ ",
	"                                                   ",
}

local function footer()
	local total_plugins = #vim.tbl_keys(packer_plugins)
	local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
	local version = vim.version()
	local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

	return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
end

dashboard.section.buttons.val = {
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
	dashboard.button("w", "  Find word", ":Telescope live_grep<CR>"),
	dashboard.button("r", "  Recently opened files", ":Telescope oldfiles<CR>"),
	dashboard.button("u", "  Update plugins", ":PackerUpdate<CR>"),
	dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("q", "  Quit", ":qa<CR>"),
}
dashboard.section.header.val = header
dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
