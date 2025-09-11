return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<c-p>', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
  },
  {
    'nvim-telescope/telescope-project.nvim', 
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      local project = require('telescope').extensions.project
      vim.keymap.set('n', '<leader>p', project.project, { desc = 'Projects' })
    end
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local fb = require('telescope').extensions.file_browser
      vim.keymap.set('n', '<leader>f-', fb.file_browser, { desc = 'Telescope browse files' })
      -- vim.keymap.set('n', '<leader>fc', fb.actions.create_from_prompt, { desc = 'Telescope create file' })
    end
  }
}
