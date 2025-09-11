-- Basic Config
vim.opt.updatetime = 100
vim.opt.visualbell = true
vim.opt.hidden = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.wo.wrap = false
vim.opt.cursorline = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.wildmenu = true
vim.opt.clipboard = 'unnamedplus'
-- vim.opt.autochdir = true

-- Don't offer to open certain files/directories
vim.opt.wildignore:append {
  "*.bmp",
  "*.gif",
  "*.ico",
  "*.jpg",
  "*.png",
  "*.ico",
  "*.pdf",
  "*.psd",
  "node_modules/*",
}

-- Window
vim.opt.winwidth = 84
vim.opt.colorcolumn = "81"
vim.opt.list = true
vim.opt.listchars:append({tab = "▸ ", trail = "•", nbsp = "⋅"})

-- Folding - TODO still needs work
vim.opt.foldmethod = "syntax"
vim.opt.foldenable = false

if vim.fn.executable("par") == 1 then
  vim.opt.formatprg = "par -w65"
end
