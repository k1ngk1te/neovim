-- C:\Users\pc\AppData\Local\nvim\lua\plugins\spellwarn.lua
return {
	"ravibrock/spellwarn.nvim",
	-- Load the plugin very late during startup
	event = "VeryLazy",
	-- This 'config' function runs after the plugin is loaded by Lazy.nvim
	config = function()
		-- Define your custom options for spellwarn.nvim
		local opts = {
			-- Severity mapping for each spelling error type
			-- These map Neovim's internal spell highlight groups to standard diagnostic severities
			severity = {
				spellbad = vim.diagnostic.severity.WARN, -- Misspelled words (e.g., 'typoo')
				spellcap = vim.diagnostic.severity.HINT, -- Capitalization issues (e.g., 'neovim' instead of 'Neovim')
				spelllocal = vim.diagnostic.severity.HINT, -- Words in local dict, not main dict (e.g., regional spelling)
				spellrare = vim.diagnostic.severity.INFO, -- Rare words
				-- Set to 'false' to disable diagnostics for a specific type, e.g., spellrare = false
			},
			-- You can also disable spell checking for certain filetypes if desired:
			-- disable_filetypes = { 'go', 'lua', 'javascript', 'typescript' },
		}
		-- Call the plugin's setup function with your custom options
		require("spellwarn").setup(opts)
	end,
}
