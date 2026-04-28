return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua", -- Lua
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", -- Lua
        },
        automatic_installation = true,
      })
    end,
  },
}
