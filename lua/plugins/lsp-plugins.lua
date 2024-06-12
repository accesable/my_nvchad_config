return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls","rust-analyzer","clangd"
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
  }

}
