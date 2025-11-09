-- main entry for nvim plugins
local plugins_manual = {}
local plugins_lazy = {}

-- these are manual (local) plugins, manual dir path is needed) 
plugins_manual = {
  {
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
  },
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
  }
}

-- these are plugins managed by lazy
plugins_lazy = {
}

return vim.list_extend(plugins_manual, plugins_lazy)
