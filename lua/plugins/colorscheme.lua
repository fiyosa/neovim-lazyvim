return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    config = function()
      require("onedarkpro").setup({
        styles = {
          comments = "italic",
          functions = "bold",
        },
      })
      vim.cmd("colorscheme onedark")
    end,
  },
}
