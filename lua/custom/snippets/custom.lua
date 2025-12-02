-- Enable Autoread
vim.opt.autoread = true
-- Auto Reload file
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorMoved", "CursorMovedI", "CursorHold", "CursorHoldI" }, {
 pattern = "*",
 command = "silent! checktime",
})
