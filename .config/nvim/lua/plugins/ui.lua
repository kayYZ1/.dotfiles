return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- Disable heavy snacks features we don't need
  {
    "snacks.nvim",
    opts = {
      -- keep the essentials LazyVim relies on
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      terminal = { enabled = true },
      toggle = { enabled = true },
      -- disable everything else (heavy or unnecessary)
      image = { enabled = false },
      indent = { enabled = false },
      scroll = { enabled = false },
      words = { enabled = false },
      explorer = { enabled = false },
      picker = { enabled = false },
      zen = { enabled = false },
      dim = { enabled = false },
      lazygit = { enabled = false },
      gitbrowse = { enabled = false },
      rename = { enabled = false },
      notify = { enabled = false },
      animate = { enabled = false },
      statuscolumn = { enabled = false },
    },
  },
}