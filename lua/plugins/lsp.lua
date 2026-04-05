return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "clangd", "asm_lsp", "rust_analyzer" }
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("*", {
        capabilities = capabilities
      })
    end
  }
}
