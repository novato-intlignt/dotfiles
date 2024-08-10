return {
	"yaocccc/nvim-foldsign",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = "kevinhwang91/promise-async",
	config = function()
		require("nvim-foldsign").setup({
			offset = -4,
			foldsigns = {
				open = "", -- mark the beginning of a fold
				close = ">", -- show a closed fold
				seps = { "│", "┃" }, -- open fold middle marker
			},
		})
	end,
}
