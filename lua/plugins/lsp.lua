vim.lsp.config("typescript-language-server", {
	cmd = { "typescript-language-server", "--stdio" },
	settings = {
		['typescript-language-server'] = {}
	},
})
vim.lsp.config("lua-language-server", {
	cmd = { "lua-language-server" },
	settings = {
              Lua = {
				diagnostics = {
					globals = { "vim" }
				},
                workspace = {
                  checkThirdParty = false,
                },
                codeLens = {
                  enable = true,
                },
                completion = {
                  callSnippet = "Replace",
                },
                doc = {
                  privateName = { "^_" },
                },
                hint = {
                  enable = true,
                  setType = true,
                  paramType = true,
                  paramName = "Disable",
                  semicolon = "Disable",
                  arrayIndex = "Disable",
                },
              },
	}
})

vim.lsp.enable("typescript-language-server")
vim.lsp.enable("lua-language-server")

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
})
