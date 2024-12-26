return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first,
    config = function()
      vim.cmd("colorscheme onedark")
    end,
  },
}

