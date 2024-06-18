local opts = {
  ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "go",
    "php",
    "phpdoc",
    "regex",
    "javascript",
    "yaml",
    "json",
  },
}

require("nvim-treesitter").setup(opts)
