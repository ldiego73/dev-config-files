local status, _ = pcall(vim.cmd, "colorscheme nord")

if not status then
	print("colorscheme not found")
	return
end
