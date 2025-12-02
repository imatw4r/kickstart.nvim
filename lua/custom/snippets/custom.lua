  -- Auto-refresh buffers on external file changes
  vim.o.autoread = true

  -- Check for file changes when:
  -- 1. Window gains focus
  -- 2. Entering a buffer
  -- 3. After idle (CursorHold)
  vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter', 'CursorHold' }, {
    pattern = '*',
    callback = function()
      if vim.fn.getcmdwintype() == '' then
        vim.cmd('checktime')
      end
    end,
  })

  -- Update time - how long before CursorHold triggers (milliseconds)
  vim.o.updatetime = 150

  -- Suppress swap file warnings
  vim.api.nvim_create_autocmd('FileChangedShellPost', {
    callback = function()
      vim.notify('File changed on disk. Reloaded.', vim.log.levels.INFO)
    end,
  })
