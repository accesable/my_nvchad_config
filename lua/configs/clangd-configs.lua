local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require"lspconfig/util"

lspconfig.clangd.setup{
  on_attach = function (client,bufnr)
    client.server_capabilities.signatureHelpProvider = false
    vim.keymap.set('n', '<leader>gd', function()
      return vim.lsp.buf.definition({ buffer = true })
    end, { noremap = true })
    on_attach(client,bufnr)
  end,
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto","hpp"},
}
