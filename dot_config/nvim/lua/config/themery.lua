-- Minimal config
require("themery").setup({
  themes = {"rose-pine", "catppuccin"}, -- Your list of installed colorschemes.
  livePreview = true, -- Apply theme while picking. Default to true.
})

vim.keymap.set("n", "<leader>tt", function()
	local themery = require("themery")
	local currentTheme = themery.getCurrentTheme()
	if currentTheme and currentTheme.name == "gruvbox light" then
		themery.setThemeByName("gruvbox dark", true)
	else
		themery.setThemeByName("gruvbox light", true)
	end
end, { noremap = true })
