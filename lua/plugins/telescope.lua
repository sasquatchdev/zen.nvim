return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",

    dependencies = {
      "nvim-lua/plenary.nvim"
    },

    lazy = true,
    event = "VeryLazy",

    config = function(_, opts)
      require("telescope").setup(opts)
    end,

    opts = {
      extensions = {
        file_browser = {
          hijack_netrw = true,

          -- add configuration here
          -- see: github.com/nvim-telescope/telescope-file-browser.nvim?tab=readme-ov-file#setup-and-configuration
        }
      }
    },

    keys = {
      { "<Leader>ff", ":Telescope find_files<Enter>", desc = "Open Telescope fuzzy search" },
      { "<Leader>fg", ":Telescope live_grep<Enter>", desc = "Open Telescope live grep" },
    }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",

    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },

    lazy = true,
    event = "VeryLazy",

    config = function()
      require("telescope").load_extension("file_browser")
    end,

    keys = {
      { "<Leader>fb", ":Telescope file_browser<Enter>", desc = "Open Telescope file browser" }
    }
  }
}
