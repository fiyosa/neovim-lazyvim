# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Preparation installation

- neovim
- git
- JetBrainsMono **[Nerd Font](https://www.nerdfonts.com/font-downloads)** (Optional)
- zig (install with choco on windows)
- fzf
- ripgrep (live grep)
- fd (find files)

## Setup on windows

- Directory for save lua config:

```sh
C:\Users\{USER}\AppData\Local\nvim
```

- Directory for package installation:

```sh
C:\Users\{USER}\AppData\Local\nvim-data
```

## Shortcuts

- Common nvim

| Mode   | Key                | Description              |
| ------ | ------------------ | ------------------------ |
| Normal | `:checkhealth `    | check all dependency     |
| Normal | `<Leader><Leader>` | find file                |
| Normal | `<Leader>/`        | find file with grep      |
| Normal | `<Leader>e`        | show/hide sidebar        |
| Normal | `gcc`              | comment                  |
| Normal | `<Leader>uw`       | enable/disable wrap      |
| Normal | `<Leader>xx`       | show/hide problem        |
| Normal | `<Leader>wq`       | close window             |
| Normal | `<Leader>un`       | dismiss all notification |
| Normal | `<Leader>n`        | show notifications       |

- Navigation tab

| Mode   | Key       | Description     |
| ------ | --------- | --------------- |
| Normal | `<Tab>`   | Next buffer     |
| Normal | `<S-Tab>` | Previous buffer |

- NvTerm

| Mode              | Key     | Description                |
| ----------------- | ------- | -------------------------- |
| Normal & Terminal | `<A-i>` | Toggle floating terminal   |
| Normal & Terminal | `<A-h>` | Toggle horizontal terminal |
| Normal & Terminal | `<A-v>` | Toggle vertical terminal   |

- Git (Gitsigns & Neogit)

| Mode   | Key          | Description           |
| ------ | ------------ | --------------------- |
| Normal | `<leader>gs` | git status            |
| Normal | `<leader>gt` | Open Neogit interface |
