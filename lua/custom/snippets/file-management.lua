local function replace_variable_with_value()
  local bufnr = vim.api.nvim_get_current_buf()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local line = cursor_pos[1]
  local col = cursor_pos[2]

  -- Get the word under the cursor
  local word = vim.fn.expand('<cword>')

  -- Use LSP to get hover information
  vim.lsp.buf_request(bufnr, 'textDocument/hover', {
    textDocument = { uri = vim.uri_from_bufnr(bufnr) },
    position = { line = line - 1, character = col },
  }, function(_, result, _, _)
    if result and result.contents then
      local value = result.contents.value or result.contents[1]
      if value then
        -- Replace the variable name with its value
        local line_content = vim.api.nvim_buf_get_lines(bufnr, line - 1, line, false)[1]
        local new_line = line_content:gsub(word, value)
        vim.api.nvim_buf_set_lines(bufnr, line - 1, line, false, { new_line })
      end
    end
  end)
end

-- Keybind to trigger the function
vim.api.nvim_set_keymap('n', '<leader>rv', ':lua replace_variable_with_value()<CR>', { noremap = true, silent = true })
