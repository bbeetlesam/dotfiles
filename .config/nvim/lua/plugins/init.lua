-- messy plugins that dont deserve a dedicated file

return {
  -- these are manual (local) plugins, manual dir path is needed)
  --[[ {
    "nvim-lualine/lualine.nvim",
    dir = "~/.local/share/nvim/site/pack/plugins/start/lualine.nvim",
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'ayu_dark',
          section_separators = '',
          component_separators = ''
        }
      })
    end
  }, ]]
  {
    "ya2s/nvim-cursorline",
    dir = "~/.local/share/nvim/site/pack/plugins/start/nvim-cursorline",
    config = function()
      require('nvim-cursorline').setup {
        cursorLine = {
          enable = true,
          timeout = 1000,
          number = false,
        },
        cursorWorld = {
          enable = true,
          min_length = 3,
          h1 = { underline = true },
        }
      }
    end
  },

  -- these are plugins managed by lazy
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", mode = "n", desc = "find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>",  mode = "n", desc = "live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>",    mode = "n", desc = "find buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>",  mode = "n", desc = "find help" },
      { "<leader>FF", "<cmd>Telescope<cr>",            mode = "n", desc = "open telescope" },
    },
    config = function()
      require('telescope').setup {
        defaults = {
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
        }
      }
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup {
        current_line_blame = true,
      }
    end
  },
  {
    "qwavies/smart-backspace.nvim",
    keys = {
      { "<leader>bs", "<cmd>SmartBackspaceToggle<CR>", mode = "n" },
    },
    opts = {
      enabled = true, -- enables/disables smart-backspace
      silent = false, -- if set to false, it will send a notification if smart-backspace is toggled
      disabled_filetypes = {
        "md",
        "txt",
      }
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      exclude = {
        filetypes = {
          "dashboard",
        },
      }
    }
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  },
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",  -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      "nvim-telescope/telescope.nvim",
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
    }
  },
  {
    'Bekaboo/dropbar.nvim',
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
    config = function()
      local dropbar_api = require('dropbar.api')
      vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
      vim.keymap.set('n', '[;', dropbar_api.goto_context_start,
        { desc = 'Go to start of current context' })
      vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
    end
  },
  -- { 'saghen/filler-begone.nvim' },
  {
    'karb94/neoscroll.nvim',
    opts = {
      stop_eof = true,
    },
  },
  {
    "declancm/cinnamon.nvim",
    version = "*", -- use latest release
    opts = {
      -- change default options here
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    'mrjones2014/legendary.nvim',
    priority = 2006,
    lazy = false,
  },
}
