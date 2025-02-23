local overrides = require "configs.overrides"

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = overrides.copilot,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    opts = {
      sources = {
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot", group_index = 2 },
        { name = "luasnip", group_index = 2 },
        { name = "buffer", group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path", group_index = 2 },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = {
            ".git/",
            "node_modules/",
            "vendor/",
          },
          layout_config = {
            prompt_position = "top",
          },
        },
      }
    end,
  },
  -- {
  --   "nvim-telescope/telescope-fzf-native.nvim",
  --   run = "make",
  -- },
  -- {
  --   "nvim-telescope/telescope-media-files.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-project.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-frecency.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-fzy-native.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-packer.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-symbols.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-arecibo.nvim",
  --   cmd = "Telescope",
  -- },
  -- {
  --   "nvim-telescope/telescope-github.nvim",
  --   cmd = "Telescope",
  -- },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    opts = {
      sources = {
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot", group_index = 2 },
        { name = "luasnip", group_index = 2 },
        { name = "buffer", group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path", group_index = 2 },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
