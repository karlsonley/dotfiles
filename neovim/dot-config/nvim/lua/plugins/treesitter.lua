return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main", -- master is frozen; main needs nvim 0.11+
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local ts = require("nvim-treesitter")

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter-start", {}),
      desc = "Auto-install parser, then enable highlighting and indentation",
      callback = function(ev)
        local lang = vim.treesitter.language.get_lang(ev.match)
        if not lang or not vim.tbl_contains(ts.get_available(), lang) then
          return
        end
        ts.install(lang):await(function()
          if vim.api.nvim_buf_is_valid(ev.buf) then
            vim.treesitter.start(ev.buf, lang)
            vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end)
      end,
    })
  end,
}
