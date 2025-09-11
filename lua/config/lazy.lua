-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

require "config.main"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "rose-pine-moon" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

require('config.keymaps')

require('gitsigns').setup()
require('telescope').setup()
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('project')
