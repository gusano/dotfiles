vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<c-h>', '<cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<c-l>', '<cmd>BufferLineCycleNext<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true


-- Disable ESLint LSP server and hide virtual text in Neovim
-- Add this to your init.lua or init.vim file
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<c-i>", function()
  isLspDiagnosticsVisible = not isLspDiagnosticsVisible
  vim.diagnostic.config({
    virtual_text = isLspDiagnosticsVisible,
    underline = isLspDiagnosticsVisible
  })
end)

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
})

-- Fix for this bug with autotag
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity_limit = 'Warning',
    },
    update_in_insert = true,
  }
)

vim.opt.cursorline = true
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = { "*" },
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#88faa8"  })
	end
})

vim.o.foldcolumn = "1"
