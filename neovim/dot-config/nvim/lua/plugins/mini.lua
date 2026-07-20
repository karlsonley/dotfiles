return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup()
    require("mini.move").setup()
    require("mini.surround").setup()
    require("mini.cursorword").setup()
    require("mini.trailspace").setup()
  end,
}
