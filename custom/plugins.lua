local plugins = {
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "aserowy/tmux.nvim",
    event = "VeryLazy",
    config = function()
      return require("tmux").setup()
    end,
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  }
}
return plugins
