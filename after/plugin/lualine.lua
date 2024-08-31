require("lualine").setup({
	lualine_y = {
		{
			"progress",
			separator = "",
		},
		{
			"location",
			separator = "",
			color = { fg = "white", bg = "NONE" },
		},
	},

	options = {
		theme = require("neofusion.lualine"),
		globalstatus = false,
		-- rest,
	},
	sections = {
		lualine_a = { { "mode", icon = "" } },
		lualine_b = { { "branch", icon = "" } },
		lualine_c = {
			{
				"diagnostics",
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
					hint = "󰝶 ",
				},
			},
			{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
			{
				"filename",
				symbols = { modified = "  ", readonly = "", unnamed = "" },
			},
		},
		lualine_z = {
			function()
				return "  " .. os.date("%X") .. " 🐸 "
			end,
		},
	},
})
