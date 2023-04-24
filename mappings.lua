local M = {}

-- Disables nvchad default keymappings
M.disabled = {
  n = {
    ["<leader>fw"] = "", -- replaced with fg
    ["<leader>n"] = "", -- nvchad defaults for set number and relativenumber. Never changing.
    ["<leader>rn"] = "",
  },
}

M.general = {
  n = {
    ["n"] = { "nzz" },
    ["N"] = { "Nzz" },
    ["*"] = { "*zz" },
    ["#"] = { "#zz" }
  }
}
M.telescope = {
  plugin = true,
  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" }
  }
}

return M
