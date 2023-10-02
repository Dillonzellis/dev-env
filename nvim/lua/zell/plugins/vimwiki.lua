return {
	"vimwiki/vimwiki",

	config = function()
		-- Any vimwiki specific configuration/setup...

		-- Create custom command GCommitPush
		vim.cmd([[
    command! GCommitPush execute 'silent !git add . && git commit -m "'.shellescape(system("date '+%Y-%m-%d %H:%M:%S'"), 1).'" && git push'
    ]])

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- Unmap the default <leader>ww
		vim.api.nvim_del_keymap("n", "<leader>ww")

		-- Map <leader>ll to Vimwiki command
		keymap.set("n", "<leader>ll", "<cmd>VimwikiIndex<cr>", { desc = "Open Vimwiki" })

		-- Map <leader>g to the GCommitPush command
		keymap.set("n", "<leader>-", "<cmd>GCommitPush<cr>", { desc = "Git commit and push with timestamp" })
	end,
}
