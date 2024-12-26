return {
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      -- setting formater yang akan dipakai

      null_ls.setup({
        debug = true,
        sources = {
          -- stylua
          null_ls.builtins.formatting.stylua,

          -- prettier
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "css",
              "html",
              "javascript",
              "typescript",
              "javascriptreact",
              "typescriptreact",
              "vue",
              "json",
              "yaml"
            },
            dynamic_command = function()
              return "prettier"
            end,
          }),
        },
      })

      vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
      -- vim.keymap.set("n", "<leader>cf", function()
      --   vim.lsp.buf.format({ timeout_ms = 5000 }) -- timeout 5 detik
      -- end, {})
    end,
  },
}
