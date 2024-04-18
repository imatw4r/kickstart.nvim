-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information


return {
  "christoomey/vim-tmux-navigator",
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      --[[ things you want to change go here]]
      size = 10
    }
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
