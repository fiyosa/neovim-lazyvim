return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right", -- Explorer di sebelah kanan
        width = 30,         -- Lebar jendela explorer (opsional)
      },
      filesystem = {
        filtered_items = {
          visible = true,            -- Default: hidden items disembunyikan
          hide_dotfiles = false,     -- Tidak menyembunyikan file/direktori yang dimulai dengan "."
          hide_gitignored = false,   -- Tidak menyembunyikan file yang diabaikan oleh Git
        },
      },
    },
  }
}
