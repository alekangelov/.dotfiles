local nvlsp = require "nvchad.configs.lspconfig"

vim.g.rustaceanvim = {
  server = {
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
  },
}
