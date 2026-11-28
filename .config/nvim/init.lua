local opt = vim.opt
local map = vim.keymap.set

-- basics
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"   -- share clipboard with system
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true

-- Exit terminal-mode insert easily (Esc works, jk too)
map("i", "jk", "<Esc>")

-- Ctrl+S : save (also in insert mode)
map({ "n", "i", "v" }, "<C-s>", "<Cmd>w<CR>", { desc = "Save" })

-- Ctrl+Q : quit
map("n", "<C-q>", "<Cmd>q<CR>", { desc = "Quit" })

-- Ctrl+A : select all
map("n", "<C-a>", "ggVG", { desc = "Select all", silent = true })

-- Ctrl+C / Ctrl+X / Ctrl+V : copy / cut / paste (works in visual + insert)
map("v", "<C-c>", '"+y', { desc = "Copy", silent = true })
map("v", "<C-x>", '"+d', { desc = "Cut", silent = true })
map("v", "<C-v>", '"+P', { desc = "Paste (replace selection)", silent = true })
map("i", "<C-v>", "<C-r><C-o>+", { desc = "Paste", silent = true })

-- Ctrl+Z / Ctrl+Y : undo / redo (Ctrl+Y also in insert)
map("n", "<C-z>", "u", { desc = "Undo", silent = true })
map("i", "<C-z>", "<Esc>ui", { desc = "Undo", silent = true })
map({ "n", "i" }, "<C-y>", "<C-r>", { desc = "Redo", silent = true })

-- Shift+Arrows : visual selection like normal editors
map("n", "<S-Down>", "v", { silent = true })
map("n", "<S-Up>", "v", { silent = true })
map("n", "<S-Left>", "v", { silent = true })
map("n", "<S-Right>", "v", { silent = true })
map("v", "<S-Down>", "j", { silent = true })
map("v", "<S-Up>", "k", { silent = true })
map("v", "<S-Left>", "h", { silent = true })
map("v", "<S-Right>", "l", { silent = true })

-- Keep visual selection when indenting with Tab / Shift+Tab
map("v", "<Tab>", ">gv", { silent = true })
map("v", "<S-Tab>", "<gv", { silent = true })

-- Home / End behave normally even in insert mode
map("i", "<Home>", "<C-o>^")
map("i", "<End>", "<C-o>$")

