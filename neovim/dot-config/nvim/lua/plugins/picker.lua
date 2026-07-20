return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      ui_select = true, -- replaces telescope-ui-select
    },
  },
  keys = {
    { "<leader><leader>", function() Snacks.picker.files({ hidden = true }) end, desc = "Find files" },
    { "<leader>fg", function() Snacks.picker.grep({ hidden = true }) end, desc = "Live grep" },
  },
}
