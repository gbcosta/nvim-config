function SetTabSettings(tabstop, shiftwidth, softtabstop)
	vim.opt.tabstop = tabstop
	vim.opt.expandtab = expandtab
	vim.opt.shiftwidth = shiftwidth
end

vim.api.nvim_create_user_command("SetTab", function(tabstop, shiftwidth, softtabstop)
	SetTabSettings(tonumber(tabstop), tonumber(shiftwidth), tonumber(expandtab))
end, { nargs = "*" })
