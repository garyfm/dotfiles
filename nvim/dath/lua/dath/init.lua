local M = {}

function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "dath"

  local palette    = require("dath.palette")
  local highlights = require("dath.highlights")
  highlights.setup(palette.colors)
end

return M
