return require("lazy").setup({

  -- =======================================================
  -- Theme (loads instantly)
  -- =======================================================
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight-night")
    end,
  },

  -- =======================================================
  -- Treesitter (real syntax highlighting)
  -- =======================================================
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        auto_install = true,
        highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        },
    },
  },

  -- =======================================================
  -- Telescope (fuzzy finder)
  -- =======================================================
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})
      local map = vim.keymap.set
      map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
      map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
      map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
    end,
  },

  -- =======================================================
  -- Alpha dashboard
  -- =======================================================
  {
    "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("alpha").setup(
      require("alpha.themes.dashboard").config
    )
  end,
  },
})
