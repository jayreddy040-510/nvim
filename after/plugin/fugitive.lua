-- Key mapping for Git Status
vim.keymap.set("n", "<leader>gs", ":Git<CR>")

-- Key mapping for Git Add Current File
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>")

-- Key mapping for Git Commit Current File
vim.keymap.set("n", "<leader>gc", ":Git commit %<CR>")

local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
	group = ThePrimeagen_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.filetype ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git("push")
		end, opts)

		-- rebase always
		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, opts)

		-- NOTE: It allows me to easily set the branch I am pushing and any tracking
		-- needed if I did not set the branch up correctly
		vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
	end,
})
