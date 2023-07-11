local lsp = require("lsp-zero")

lsp.preset("recommended")

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

lsp.set_preferences({
	sign_icons = { }
})


lsp.setup_servers({'tsserver', 'eslint'})

lsp.setup()
