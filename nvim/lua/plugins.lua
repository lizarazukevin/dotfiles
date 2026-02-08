return require("lazy").setup({

  -- =======================================================
  -- Theme (loads instantly)
  -- =======================================================
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin-mocha")
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
  -- =======================================================
  -- Smear cursorline
  -- =======================================================
  {
    "sphamba/smear-cursor.nvim",
    opts = {
        smear_between_buffers = true,
        smear_between_neighbor_lines = true,
        scroll_buffer_space = true,
        stiffness = 0.6,
        trailing_stiffness = 0.3,
        distance_stop_animating = 0.5,
    },
  },
})
