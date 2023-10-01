return {
	"vimwiki/vimwiki",

	config = function()
		-- You can place any vimwiki setup/configuration here, similar to the telescope.setup({})
		-- If vimwiki has any lua-based setup, that is.

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- Unmap the default <leader>ww
		vim.api.nvim_del_keymap("n", "<leader>ww")

		-- Map <leader>ll to Vimwiki command.
		-- I'm using ':VimwikiIndex<CR>' as an example, adjust if vimwiki uses a different command.
		keymap.set("n", "<leader>ll", "<cmd>VimwikiIndex<cr>", { desc = "Open Vimwiki" })
	end,
}
