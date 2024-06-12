local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require"lspconfig/util"

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  -- Set the command to launch gopls (usually just "gopls")
  cmd = {"gopls"},
  -- Filetypes for which gopls should be activated
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  -- Automatically find the project root directory based on go.work or go.mod files
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
})

