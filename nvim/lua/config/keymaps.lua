local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<C-q>", ":q!<CR>")
keymap.set("n", "<C-n>", "<cmd>bprevious<cr>")
keymap.set("n", "<C-m>", "<cmd>bnext<cr>")
keymap.set("n", "<C-e>", "<cmd>bd!<CR>")

keymap.set("n", "<C-c>", '"+y')
keymap.set("n", "<C-x>", '"+d')
keymap.set("n", "<C-v>", '"+p')

keymap.set("n", "<C-left>", "b")
keymap.set("n", "<C-right>", "e")
keymap.set("v", "<C-left>", "b")
keymap.set("v", "<C-right>", "e")

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
	require("craftzdog.lsp").toggleInlayHints()
end)

vim.api.nvim_create_user_command("ToggleAutoformat", function()
	require("craftzdog.lsp").toggleAutoformat()
end, {})
