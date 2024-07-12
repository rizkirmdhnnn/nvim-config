require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.relativenumber = true

vim.opt.scrolloff = 10

vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
