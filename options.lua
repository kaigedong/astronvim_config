-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap

    -- Tab的设置
    tabstop = 4, -- Tab 默认显示宽度是 8 个空格,修改Tab显示宽度：1 tab == 4 spaces，不修改按Tab键的行为
    expandtab = true, -- 根据tabstop 选项值把插入的 tab 替换成特定数目的空格
    softtabstop = 2, -- 选项修改按 Tab 键的宽度，不修改 tab 字符的显示宽度。具体行为跟 tabstop 选项值有关
    shiftwidth = 4, -- shift 4 spaces when tab(how many columns of whitespace a “level of indentation” is worth?)
    smartindent = true, -- make indenting smarter again autoindent 根据上一行判断缩进，smartindent根据语法缩进

    -- 修改lua/plugins/heirline.lua以设置signcolumn, number column, foldcolumn 排列顺序
    foldcolumn = "0", -- Folding options
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
