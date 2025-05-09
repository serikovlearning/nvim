vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- opts
local opt = vim.opt

opt.termguicolors = true -- True color support
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en", "ru" }
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.fillchars:append({ eob = " " })  -- 'eob' = End Of Buffer
opt.clipboard = "unnamedplus"
opt.number = true

