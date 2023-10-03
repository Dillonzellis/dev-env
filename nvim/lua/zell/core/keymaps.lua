-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

----------------------- General Keymaps -------------------

-- save file with w
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file w" })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>rr", ":set invwrap<CR>", { desc = "toggle word wrap" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- fix copy/paste
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yanks to system clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yanks line to the system clipboard " })

keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Deletes without yanking" })

keymap.set("x", "<leader>p", [["_dP]], {
	desc = "replace the selected lines with whatever you last copied or deleted without saving the lines you're replacing.",
})

-- replace word under cursor throughout file
keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "replace word under cursor throughout file" }
)

-- disable Q
vim.keymap.set("n", "Q", "<nop>")

-- scroll up/down and center screen
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
