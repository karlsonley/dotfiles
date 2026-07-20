return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")
        vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { buffer = bufnr })
        vim.keymap.set("n", "<leader>gt", gitsigns.toggle_current_line_blame, { buffer = bufnr })
      end,
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },
}
