return {
  "windwp/nvim-ts-autotag",
  -- dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true, -- or false to disable auto-closing
        enable_rename = true, -- or false to disable auto-rename
        enable_close_on_slash = false -- or true to enable closing on </
      },
    })
  end,
}
