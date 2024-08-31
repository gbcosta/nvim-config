cyber = require("cyberdream").setup({
	-- Enable transparent background
	transparent = true,

	-- Enable italics comments
	italic_comments = false,

	-- Replace all fillchars with ' ' for the ultimate clean look
	hide_fillchars = false,

	-- Modern borderless telescope theme
	borderless_telescope = false,

	-- Set terminal colors used in `:terminal`
	terminal_colors = true,

	theme = {
		variant = "dark", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
		highlights = {
			-- Highlight groups to override, adding new groups is also possible
			-- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
			-- Example:
			Comment = { fg = "#696969", bg = "NONE", italic = true },
			Type = { fg = "#f70fa6" },
			Constant = { fg = "#0ff3f7" },
			Delimiter = { fg = "white" },
			-- Complete list can be found in `lua/cyberdream/theme.lua`
		},

		-- Override a color entirely
		colors = {
			orange = "#8848f0",
			green = "#23e826",
			fg = "#ffffff",
			-- For a list of colors see `lua/cyberdream/colours.lua`
		},
	},
})

function updateColor(color)
	color = color or "OceanicNext"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#a1fa61", bold = true, bg = "none" })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#fa61d6", bold = true, bg = "none" })
	vim.api.nvim_set_hl(0, "normalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true, bg = "none" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "white", bold = true, bg = "none" })

	-- telescopre
	vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "white" })

	vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { fg = "white" })
	vim.api.nvim_set_hl(0, "TelescopeResultsLineNr", { fg = "white" })
end

updateColor("kanagawa")
