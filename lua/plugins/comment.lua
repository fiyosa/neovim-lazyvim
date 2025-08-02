---@diagnostic disable: undefined-global
return {
  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    opts = {
      pre_hook = function(ctx)
        local utils = require("ts_context_commentstring.utils")
        local internal = require("ts_context_commentstring.internal")

        local location
        if ctx.cmotion == 1 or ctx.cmotion == 2 then -- visual mode
          location = utils.get_visual_start_location()
        else -- line or block comment
          location = utils.get_cursor_location()
        end

        local commentstring = internal.calculate_commentstring({
          key = ctx.ctype == 1 and "__default" or "__multiline",
          location = location,
        })

        -- Fallback jika nil
        return commentstring or vim.bo.commentstring or "// %s"
      end,
    },
    config = function(_, opts)
      require("Comment").setup(opts)
    end,
  },
}
