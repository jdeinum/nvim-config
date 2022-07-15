-- make sure the installer is installed
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end



local lspconfig = require("lspconfig")
local servers = { "sumneko_lua", "rust_analyzer", "clangd", "metals", "pyright", "gopls"}


-- check to make sure that all of our servers are installed
-- metals isn't on that list, might have to take it off.
lsp_installer.setup {
  ensure_installed = servers
}

for _, server in pairs(servers) do

  -- default options
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }




  -- check if it has custom options
  local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.custom." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
  end


  lspconfig[server].setup(opts)
end
