-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
vim.opt.swapfile = false
-- 1. Disable the confirmation dialog for many operations
vim.opt.confirm = false

-- 2. Add 'W' to shortmess to ignore "written" messages and
-- 'A' to ignore swap file warnings (which often trigger prompts)
vim.opt.shortmess:append("WA")

-- 3. Allow overwriting read-only files without asking
-- (This mimics ':w!' behavior automatically)
vim.opt.writeany = true

-- 4. Automatically reload the file if it changed outside of Vim
-- (Prevents the "File changed on disk" prompt)
vim.opt.autoread = true
