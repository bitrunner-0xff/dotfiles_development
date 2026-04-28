return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "tflint" } },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "terraform", "hcl" } },
  },
  {
    "ANGkeith/telescope-terraform-doc.nvim",
    ft = { "terraform", "hcl" },
    config = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("terraform_doc")
      end)
    end,
  },
  {
    "cappyzawa/telescope-terraform.nvim",
    ft = { "terraform", "hcl" },
    config = function()
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("terraform")
      end)
    end,
  },
}
