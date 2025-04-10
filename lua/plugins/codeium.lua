return {
  {
    -- :Codeium Auth
    -- :Codeium Chat
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_cmp_source = true,
        virtual_text = {
          enabled = false,
        },
      })
    end,
  },
}
