# nvim-madara-theme

A dark Neovim colorscheme ported 1:1 from [madara-theme](https://github.com/davidalecrim1/madara-theme), a Zed theme
inspired by Tokyo Night, with purple-tinted backgrounds, pink keywords, teal strings, gold types, and purple brackets.

## Install (lazy.nvim / LazyVim)

```lua
{
  "davidalecrim1/nvim-madara-theme",
  name = "madara",
  lazy = false,
  priority = 1000,
},

-- Tell LazyVim to use it
{
  "LazyVim/LazyVim",
  opts = { colorscheme = "madara" },
},
```

Or manually:

```lua
vim.cmd.colorscheme("madara")
```

## Usage

Select it interactively in LazyVim with `<leader>uC` (colorscheme picker), or run:

```vim
:colorscheme madara
```
