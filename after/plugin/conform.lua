require("conform").setup({
	formatters_by_ft = {
		go = { { "gofumpt", "golines" } },
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		yaml = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		lua = { { "stylua" } },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
