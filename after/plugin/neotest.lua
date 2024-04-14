local neotest = require("neotest")

neotest.setup({
	discovery = {
		enabled = false,
	},
	adapters = {
		require("neotest-jest")({
			-- using pnpm - maybe need to change?
			jestCommand = "pnpm test --",
			jestConfigFile = "custom.jest.config.ts",
			env = { CI = true },
			cwd = function()
				return vim.fn.getcwd()
			end,
		}),
	},
})

-- in lua when you don't wrap a function in a lambda function it executes
-- the function as soon as the file is sourced. TIL, i guess.
vim.keymap.set("n", "<leader>t", function()
	neotest.run.run()
end)

vim.keymap.set("n", "<leader>T", function()
	require("neotest").run.run(vim.fn.expand("%"))
end)

vim.keymap.set("n", "<leader>ts", function()
	require("neotest").run.stop()
end)
