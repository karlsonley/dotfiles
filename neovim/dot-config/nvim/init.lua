require("options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = { { import = "plugins" } },
  install = { colorscheme = { "catppuccin-mocha" } },
  change_detection = { notify = false },
  rocks = { enabled = false },
})

vim.api.nvim_create_autocmd("BufWritePre", {
  desc = "Format on save",
  callback = function(ev)
    vim.lsp.buf.format({ bufnr = ev.buf })
  end,
})
