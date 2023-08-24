local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    -- mypy: static type checking
    -- ruff: linting
    ft = {"python"},
    opts = function()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "ruff",
        "black",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
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
