local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    scss = { "prettier" },
    sass = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    json = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    -- rust
    rust = { "rustfmt" },

    go = { "gofmt", "goimports" },
    python = { "black" },
    sh = { "shfmt" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    toml = { "prettier" },
    jsonc = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  log_level = vim.log.levels.DEBUG,
}

return options
