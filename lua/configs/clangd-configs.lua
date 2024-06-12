local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require"lspconfig/util"

lspconfig.clangd.setup{
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto","hpp"},
}
