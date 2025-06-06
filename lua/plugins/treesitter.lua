return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",

  lazy = false,

  build = ":TSUpdate",

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,

  opts = {
    ensure_installed = {
      "lua"
    },

    auto_install = true,

    highlight = {
      enable = true
    },

    indent = {
      enable = true
    }
  }
}
