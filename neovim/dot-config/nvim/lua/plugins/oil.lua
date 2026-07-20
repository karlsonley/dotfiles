return {
  "stevearc/oil.nvim",
  lazy = false, -- so `nvim <dir>` opens oil
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "-", function() require("oil").toggle_float() end, desc = "File browser" },
  },
}
