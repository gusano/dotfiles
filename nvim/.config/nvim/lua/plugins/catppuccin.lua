return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      custom_highlights = function()
        return {
          Comment = { style = {"italic"}}
        }
    end
    })
    vim.cmd.colorscheme "catppuccin-mocha"
  end
}
