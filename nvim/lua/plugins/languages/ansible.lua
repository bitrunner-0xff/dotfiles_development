return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "ansible-lint" } },
  },
  {
    "mfussenegger/nvim-ansible",
    ft = { "yaml" },
    keys = {
      {
        "<leader>ta",
        function()
          require("ansible").run()
        end,
        ft = "yaml.ansible",
        desc = "Ansible Run Playbook/Role",
        silent = true,
      },
    },
  },
}
