local function setkeymaps()
  local builtin = require("telescope.builtin")
  local k = vim.keymap

  k.set("n", "<leader>ff", builtin.find_files, {})
  k.set("n", "<leader>fg", builtin.live_grep, {})
  k.set("n", "<leader>fb", builtin.buffers, {})
end

return { 
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = setkeymaps, 
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    dependencies = { "nvim-telescope/telescope.nvim" },
    cond = function()
      -- if make is not present, do not load the plugin
      return vim.fn.executable "make" == 1
    end,
    config = function()
      require("telescope").load_extension("fzf")
    end
  },
}

