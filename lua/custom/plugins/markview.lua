return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- so it loads immediately
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional icons
      "nvim-treesitter/nvim-treesitter", -- for syntax highlighting
    },
    config = function()
      require("markview").setup({
        -- optional settings
        hybrid_modes = { "n" },
      })
    end,
  },
}
