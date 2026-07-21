return {
  "github/copilot.vim",
  event = "InsertEnter",
  init = function()
    -- Free <Tab> for blink.cmp; accept suggestions with <C-l> instead.
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = { markdown = true, gitcommit = true }
  end,
  config = function()
    vim.keymap.set("i", "<C-l>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = "Copilot: accept suggestion",
    })
    vim.keymap.set("i", "<C-]>", "<Plug>(copilot-next)")
    vim.keymap.set("i", "<C-[>", "<Plug>(copilot-previous)")
  end,
}
