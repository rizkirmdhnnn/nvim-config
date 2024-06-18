-- plugin: noice.nvim

local ops = {
  -- lsp = {
  --   -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
  --   override = {
  --     ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
  --     ["vim.lsp.util.stylize_markdown"] = true,
  --     ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
  --   },
  --
  --   progress = {
  --     enabled = false,
  --     format = "lsp_progress",
  --     format_done = "lsp_progress_done",
  --     throttle = 1000 / 30, -- frequency to update lsp progress message
  --     view = "mini",
  --   },
  -- },
  -- -- you can enable a preset for easier configuration
  -- presets = {
  --   bottom_search = true, -- use a classic bottom cmdline for search
  --   command_palette = true, -- position the cmdline and popupmenu together
  --   long_message_to_split = true, -- long messages will be sent to a split
  --   inc_rename = false, -- enables an input dialog for inc-rename.nvim
  --   lsp_doc_border = false, -- add a border to hover docs and signature help
  -- },
  --
  -- routes = {
  --   {
  --     filter = {
  --       event = "msg_show",
  --       kind = "",
  --       find = "written",
  --     },
  --     opts = { skip = true },
  --   },
  -- },
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    progress = {
      enabled = false,
      format = "lsp_progress",
      format_done = "lsp_progress_done",
      throttle = 1000 / 30, -- frequency to update lsp progress message
      view = "mini",
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
  },

  views = {
    mini = {
      position = {
        row = 1,
        col = "98%",
        align = "right",
      },
      timeout = 3000,
      border = {
        style = "rounded", -- Gaya border (bisa juga "single", "double", "shadow", dll.)
        padding = { 0, 1, 0, 1 }, -- Padding di sekitar view mini
      },
    },
  },

  routes = {
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "written",
      },
      opts = { skip = true },
    },

    -- {
    --   filter = {
    --     event = "msg_show",
    --     any = {
    --       { find = "%d+L, %d+B" },
    --       { find = "; after #%d+" },
    --       { find = "; before #%d+" },
    --       { find = "fewer lines" },
    --     },
    --   },
    --   view = "mini",
    -- },
  },
}

return ops
