return {
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        debug = true, -- Aktifkan log untuk debugging
        sources = {
          -- Stylua untuk Lua
          null_ls.builtins.formatting.stylua,
          -- Prettier untuk file frontend
          null_ls.builtins.formatting.prettier.with({
            filetypes = { "css", "html", "javascript", "typescript", "vue", "go", "json", "yaml", "markdown" },
            command = "prettier", -- Gunakan Prettier dari PATH
          }),
        },
      })

      -- Keybinding untuk Formatting
      vim.keymap.set("n", "<leader>cf", function()
        vim.lsp.buf.format({ async = true, timeout_ms = 2000 }) -- Timeout 2 detik
      end, { desc = "Format file" })
    end,
  },
}
