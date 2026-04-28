return {
  {
    "mason.nvim",
    opts = { ensure_installed = { "hadolint" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "dockerfile" } },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "dockerls", -- Docker
        },
        automatic_installation = true,
      })
    end,
  },
}
