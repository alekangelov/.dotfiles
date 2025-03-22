local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    scss = { "biome" },
    sass = { "biome" },
    html = { "biome" },
    css = { "biome" },
    json = { "biome" },
    javascript = { "biome" },
    javascriptreact = { "biome" },
    -- rust
    rust = { "rustfmt" },

    go = { "gofmt", "goimports" },
    python = { "black" },
    sh = { "shfmt" },
    yaml = { "biome" },
    markdown = { "biome" },
    toml = { "taplo" },
    jsonc = { "biome" },
    prisma = { "prisma" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  log_level = vim.log.levels.DEBUG,
}

return options
