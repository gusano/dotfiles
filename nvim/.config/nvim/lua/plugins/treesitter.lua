return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {
        "bash",
        "ruby",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
      },
      highlight = { enable = true },
      indent = { enable = false },
    })
  end
}
