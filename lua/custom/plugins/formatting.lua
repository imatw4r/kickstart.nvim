return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile', 'BufWritePre' },
  config = function()
    local conform = require 'conform'
    conform.setup {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        python = { 'black', 'isort' },
        json = { "deno_fmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" }, { 'prettier' },
        go = { 'gofmt', 'gofumpt' },
        -- sql = { 'sqlfmt' },
      },
      format_on_save = {
        lsp_fallback = false,
        async = false,
        timeout_ms = 5000,
        quiet = false,
      },
    }
    vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
      conform.format {
        lsp_fallback = false,
        async = false,
        timeout_ms = 500,
      }
    end, { desc = 'Format file or range (in visual mode)' })
    -- conform.formatters.black = {
    --   prepend_args = { '-l', '88' },
    -- }
    conform.formatters.autoflake = {
      lsp_format = "never",
      command = "autoflake",
      prepend_args = { '--remove-all-unused-imports', '--remove-unused-variables', '--in-place' },
      options = {
        always = true,

      },
    }
    conform.formatters.sqls = {
      lsp_format = "never",
      command = "sql-formatter",
      prepend_args = { '--indent', '2' },
      options = {
        always = true,
      },
    }
  end,
}
