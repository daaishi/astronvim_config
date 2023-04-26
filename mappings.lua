return {
  i = {
    ["<C-i>"] = { 'copilot#Accept("<CR>")', silent = true, expr = true, script = true },
    ["≥"] = { '<Plug>(copilot-next)', silent = true},
    ["≤"] = { '<Plug>(copilot-previous)', silent = true},
  },
  n = {
   ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    }, 
  }
}
