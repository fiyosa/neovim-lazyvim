return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      autotag = { enable = true },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "go",
        "gomod",
        "gosum",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "python",
        "regex",
        "rust",
        "scss",
        "svelte",
        "tsx",
        "typescript",
        "vue",
        "yaml",
      },
      auto_install = true,
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
