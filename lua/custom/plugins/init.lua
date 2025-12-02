-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information


return {
  {
    "mbbill/undotree",
  },
  {
    'f-person/git-blame.nvim',
    event = "BufRead"
  },
  {
    "github/copilot.vim"
  },
  {
    "tpope/vim-fugitive"
  },
  {
    "christoomey/vim-tmux-navigator",
    -- vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>"),
    -- vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>"),
    -- vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>"),
    -- vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>"),
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    keys = {
      { "<Leader>t", "<cmd>ToggleTerm<cr>", desc = "Open Terminal" },
    },
    opts = {
      --[[ things you want to change go here]]
      size = 10
    }
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
