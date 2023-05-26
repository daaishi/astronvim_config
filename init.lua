return {
  -- colorscheme = "catppuccin",
  colorscheme = "tokyonight-night",
  highlights = {
    -- apply highlight group to all colorschemes (include the default_theme)
    init = {
      -- set the transparency for all of these highlight groups
      Normal = { bg = "NONE", ctermbg = "NONE" },
      NormalNC = { bg = "NONE", ctermbg = "NONE" },
      CursorColumn = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
      CursorLine = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
      CursorLineNr = { cterm = {}, ctermbg = "NONE", ctermfg = "NONE" },
      LineNr = {},
      SignColumn = {},
      StatusLine = {},
      NeoTreeNormal = { bg = "NONE", ctermbg = "NONE" },
      NeoTreeNormalNC = { bg = "NONE", ctermbg = "NONE" },
    },
  },
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true, -- enable format on save
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          "typescript",
        },
      },
      filter = function(client)
        if client.name == "lua_ls" then
          return false
        end

        if vim.bo.filetype == "javascript" then
          return client.name == "null-ls"
        end
        
        return true
      end
    },
    servers = {
      -- "dartls",
    },
    setup_handlers = {
      -- add custom handler
      -- dartls = function(_, opts) require("flutter-tools").setup { lsp = opts } end,
      -- tsserver = function(_, opts) require("typescript").setup { server = opts } end
    },
    config = {
      -- dartls = {
      --   -- any changes you want to make to the LSP setup, for example
      --   color = {
      --     enabled = true,
      --   },
      --   settings = {
      --     showTodos = true,
      --     completeFunctionCalls = true,
      --   },
      -- },
    },
  },
  -- plugins = {
  --   -- "akinsho/flutter-tools.nvim", -- add lsp plugin
  --   -- "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
  --   -- {
  --   --   "williamboman/mason-lspconfig.nvim",
  --   --   opts = {
  --   --     ensure_installed = { "tsserver" }, -- automatically install lsp
  --   --   },
  --   -- },
  --   -- {
  --   --   "github/copilot.vim",
  --   --   cmd = "Copilot",
  --   --   event = "InsertEnter",
  --   --   config = function() vim.g.copilot_no_tab_map = true end,
  --   -- },
  --   -- {
  --   --   "catppuccin/nvim",
  --   --   as = "catppuccin",
  --   --   config = function()
  --   --     require("catppuccin").setup {}
  --   --   end,
  --   -- },
  -- },
}
