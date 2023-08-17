local M = {}

M.general = {
  i = {
    ["jk"] = {"<ESC>", "Escape"}
  }
}

M.undotree= {
  n= {
    ["<leader><F5>"] = {"<cmd> UndotreeToggle <CR>", "Undotree"},
  }
}

return M
