package.path = package.path .. ";/home/bobo/.config/nvim/lua/?.lua"

return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.highlight.disable = function(_, bufnr) return vim.api.nvim_buf_line_count(bufnr) > 100000 end
      return opts
    end,
  },
  {
    "stevearc/aerial.nvim",
    opts = function(_, opts)
      opts.disable_max_lines = 100000
      opts.disable_max_size = 20000000
      return opts
    end,
  },

  -- local status = require "astronvim.utils.status"
  {
    "rebelot/heirline.nvim",
    optional = true,
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      opts.statusline = nil
      opts.statuscolumn = vim.fn.has "nvim-0.9" == 1
          and {
            status.component.foldcolumn(),
            -- status.component.fill(),
            status.component.signcolumn(),
            status.component.numbercolumn(),
          }
        or nil
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      opts.signs = {
        add = { text = "+" },
        change = { text = "=" },
      }
    end,
  },

  {
    "echasnovski/mini.files",
    opts = function(_, opts)
      opts.windows = {
        max_number = math.huge, -- Maximum number of windows to show side by side
        -- preview = true, -- Whether to show preview of file/directory under cursor
        width_focus = 25, -- Width of focused window
        width_nofocus = 25, -- Width of non-focused window
        width_preview = 25, -- Width of preview window
      }
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = { theme = "codedark", section_separators = "", component_separators = "" }
      opts.sections = {
        lualine_a = { { "mode" } },
        lualine_b = { { "filename", path = 1 } },
        lualine_c = { "location", "selectioncount", "progress" },
        lualine_x = { "encoding", "fileformat" },
        lualine_y = { "filetype" },
        lualine_z = { "branch", "diff", "diagnostics" },
      }
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
