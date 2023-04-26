return {
  -- colorscheme = "catppuccin",
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true, -- enable format on save
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
      "dartls",
    },
    setup_handlers = {
      -- add custom handler
      dartls = function(_, opts) require("flutter-tools").setup { lsp = opts } end,
      tsserver = function(_, opts) require("typescript").setup { server = opts } end
    },
    config = {
      dartls = {
        -- any changes you want to make to the LSP setup, for example
        color = {
          enabled = true,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
        },
      },
    },
  },
  plugins = {
    "akinsho/flutter-tools.nvim", -- add lsp plugin
    "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "tsserver" }, -- automatically install lsp
      },
    },
    {
      "github/copilot.vim",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function() vim.g.copilot_no_tab_map = true end,
    },
    {
      "catppuccin/nvim",
      as = "catppuccin",
      config = function()
        require("catppuccin").setup {}
      end,
    },
  },
}
