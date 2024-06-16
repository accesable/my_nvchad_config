return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls","rust-analyzer","clangd","lua-language-server"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.gopls-lsp-configs"
      require "configs.rust-analyzer-configs"
      require "configs.clangd-configs"
    end,
  },
  {
      'mfussenegger/nvim-jdtls',
      config = function()
        require('configs.jdtls-lsp-config').setup()
      end
  },
  {
    "nvimtools/none-ls.nvim",
     ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  },

}
