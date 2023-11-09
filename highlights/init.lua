return { -- this table overrides highlights in all themes
  CursorLine = { bg = "#232323" },
  -- Visual = { bg = "#f4a582", fg = "#4d4d4d" },

  -- 根据文档 :h vim.lsp.buf.document_highlight() 设置下面高亮组，来定义CursorWord的高亮颜色
  LspReferenceText = { bg = "#4b5260", fg = "#ffffff" },
}
