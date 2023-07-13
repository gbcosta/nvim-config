function updateColor(color)
	color = color or "OceanicNext"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "normalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true, bg = "none" })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true, bg = "none" })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=tre, bg = "none" })
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg='white', bold=true, bg = "none" })

end

updateColor()
