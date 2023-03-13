return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    require("nightfox").setup(opts)
    vim.cmd.colorscheme("terafox")

    -- using nightfox "transparent" options breaks lualine theme
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
  opts = {
    options = {
      styles = {
        comments = "italic",
      },
    },
  },
}

