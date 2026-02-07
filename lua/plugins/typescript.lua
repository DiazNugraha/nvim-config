-- lua/plugins/typescript.lua
--
return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.name == "tsserver" then
            local buf = event.buf
            vim.keymap.set("n", "<leader>co", "<cmd>TypescriptOrganizeImports<cr>", {
              buffer = buf,
              desc = "Organize Imports",
            })
            vim.keymap.set("n", "<leader>cR", "<cmd>TypescriptRenameFile<cr>", {
              buffer = buf,
              desc = "Rename File",
            })
          end
        end,
      })
    end,
  },
}
