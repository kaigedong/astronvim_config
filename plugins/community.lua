return { -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity", -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  { import = "astrocommunity.file-explorer.mini-files" },
  -- { import = "astrocommunity.git.git-blame-nvim" },

  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },

  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
}
