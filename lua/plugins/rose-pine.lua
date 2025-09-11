return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme rose-pine-moon")
    end
  },
  {
    'maxmx03/roseline',
    opts = {},
    dependencies = {
      'rose-pine/neovim',
      'lewis6991/gitsigns.nvim',
    }
  }
}
