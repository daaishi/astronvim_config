return {
  lsp = {
    formatting = {
      format_on_save = {
        enabled = true, -- enable format on save
        allow_filetypes = { -- only allow formatting on save for these filetypes
          "lua",
          "python",
        }
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
  },
}
