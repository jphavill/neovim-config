-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua


-- Fix SMB conflicts
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

-- Fix for SMB/Network Mounts
vim.opt.backup = false      -- Don't create backup files (causes sync issues)
vim.opt.writebackup = false -- Don't backup before overwriting

-- Force Neovim to ignore timestamp checks on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  callback = function()
    vim.opt.eventignore:append("FileChangedShellPost")
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    vim.opt.eventignore:remove("FileChangedShellPost")
  end,
})

-- enable this if I still get overwrite messages
vim.opt.fsync = false
