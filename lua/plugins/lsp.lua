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
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.asm_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })
    end
  }
}
