return {
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "jsonls", -- Json
          "yamlls", -- Yaml
          "marksman", -- Something about Vim marks
        },
        automatic_installation = true,
      })
    end,
  },
}
