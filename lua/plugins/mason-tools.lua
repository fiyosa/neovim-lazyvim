-- lua/plugins/mason-tools.lua
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua
      "stylua",

      -- web
      "prettier",
      "eslint_d",

      -- shell
      "shfmt",

    -- language server 
      "php-cs-fixer",
			"vue-language-server",
			"typescript-language-server",
			"svelte-language-server",
    },
  },
}