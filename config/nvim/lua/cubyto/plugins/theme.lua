return {
  {
    "oxfist/night-owl.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
-- Set colorscheme              
      vim.o.termguicolors = false               
      -- load the colorscheme here
      vim.cmd([[colorscheme night-owl]])
    end,
  },
}
