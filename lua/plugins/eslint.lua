return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      local eslint_filetypes = {
        javascript = { "eslint_d", "eslint" },
        javascriptreact = { "eslint_d", "eslint" },
        typescript = { "eslint_d", "eslint" },
        typescriptreact = { "eslint_d", "eslint" },
        vue = { "eslint_d", "eslint" },
      }

      for ft, formatters in pairs(eslint_filetypes) do
        opts.formatters_by_ft[ft] = formatters
      end

      opts.format_on_save = function(bufnr)
        local ft = vim.bo[bufnr].filetype
        if eslint_filetypes[ft] then
          local found = vim.fs.find({
            ".eslintrc.js",
            ".eslintrc.cjs",
            ".eslintrc.json",
            ".eslintrc",
          }, {
            upward = true,
            path = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr)),
          })

          if #found == 0 then
            return { timeout_ms = 1000, lsp_fallback = false }
          end
        end
        return { timeout_ms = 1000 }
      end
    end,
  },
}
