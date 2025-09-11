local wk = require("which-key")
wk.add({
  { "<leader>o", group = "open" },
  { "<leader>f", group = "file" },
  { "<leader>fn", desc = "New File" },
  { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
  { "<leader>wm", group = "maximize" },
  { "<leader>wmm", "<cmd>only<cr>", desc = "Maximize current buffer" },
  { "<leader>wc", "<cmd>close<cr>", desc = "Close window" },
  { "<leader>b", group = "buffers", expand = function()
      return require("which-key.extras").expand.buf()
    end
  },
  { "<leader>bs", "<cmd>w<cr>", desc = "Save buffer" },
  { "<leader>bS", "<cmd>wa<cr>", desc = "Save all buffers" },
  { "<leader>bd", "<cmd>bd<cr>", desc = "Kill buffer" },
  { "<leader>bk", "<cmd>bd<cr>", desc = "Kill buffer" },
  { "<leader>bK", "<cmd>%bd<cr>", desc = "Kill all buffers" },
  {
    -- Nested mappings are allowed and can be added in any order
    -- Most attributes can be inherited or overridden on any level
    -- There's no limit to the depth of nesting
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>q", group = "quit/session" },
    { "<leader>qq", "<cmd>q<cr>", desc = "Quit Neovim" }, -- no need to specify mode since it's inherited
  },
  { "<localleader><localleader>", "<C-^>", desc = "Switch to previous buffer" }
})

-- vim.cmd('source ./mappings.vim')
