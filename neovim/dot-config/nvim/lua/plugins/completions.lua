return {
  "saghen/blink.cmp",
  version = "1.*", -- release pin pulls the prebuilt fuzzy-matcher binary
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    keymap = { preset = "enter" },
    completion = {
      documentation = { auto_show = true },
    },
  },
}
