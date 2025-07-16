return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  -- keys = {
  --   { "<C-PageDown>", "<cmd>BufferLineCyclePrev<cr>", desc = "" },
  -- },
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
        end,
      },
    })
  end,
}
