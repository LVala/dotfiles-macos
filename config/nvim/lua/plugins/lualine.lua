-- TODO configuration
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function(_, opts)
    vim.opt.showmode = false
    require("lualine").setup(opts)
  end,
  opts = {
    options = {
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff'},
      lualine_c = {
        {'filename', symbols = {
          modified = "󱇨",
          readonly = "󰷋",
          unnamed = "󰩌",
          newfile = "󰻭",
          },
        },
      },
      lualine_x = { "diagnostics" },
      lualine_y = { "filetype" },
      lualine_z = {
        { "location", icon = "󰆣" },
        { "progress", icon="" }
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_b = {
        {"tabs", mode = 0},
      },
    },
    winbar = { lualine_c = {{"filename", path = 1}}},
    inactive_winbar = {},
    extensions = {},
  },
}

