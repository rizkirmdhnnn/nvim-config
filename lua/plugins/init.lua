return {
  {
    "stevearc/conform.nvim",
    event = "bufwritepre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    config = function()
      require "configs.mason"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.treesitter"
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = function()
      local cmp = require "cmp"
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "cmdline" },
        },
      })
    end,
    config = function(_, opts)
      table.insert(opts.sources, 2, { name = "copilot" })
      opts.mapping = vim.tbl_extend("force", {}, opts.mapping, {
        -- You can kadd here new mappings.
      })

      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascriptreact", { "html" })
      luasnip.filetype_extend("typescriptreact", { "html" })
      luasnip.filetype_extend("svelte", { "html" })
      luasnip.filetype_extend("vue", { "html" })

      opts.completion["completeopt"] = "menu,menuone,noselect" -- disable autoselect
      require("cmp").setup(opts)
    end,
    dependencies = {
      {
        "saecki/crates.nvim",
        tag = "stable",
        opts = {},
      },

      {
        "hrsh7th/cmp-cmdline",
      },

      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },

      {
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
      },
    },
  },
}
