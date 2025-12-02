return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      integrations = {
        cmp = true,
        dap = true,
        neotree = true,
        gitsigns = true,
        fzf = true,
        markdown = true,
      }
    })
  end,
}
