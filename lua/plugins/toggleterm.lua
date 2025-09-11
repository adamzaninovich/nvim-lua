return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      local term = require('toggleterm')

      term.setup {
        shade_terminals = false,
        direction = 'float',
        float_opts = {
          border = 'curved'
        },
      }

      vim.keymap.set('n', '<c-\\>', term.toggle, { desc = 'Toggle Terminal' })
      vim.keymap.set('t', '<c-\\>', term.toggle, { desc = 'Toggle Terminal' })
      vim.keymap.set('n', '<leader>ot', term.toggle, { desc = 'Toggle Terminal' })
    end
  }
}
