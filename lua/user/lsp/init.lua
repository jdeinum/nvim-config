local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print "couldn't find lspconfig!"
  return
end

require "user.lsp.setup"
require("user.lsp.handlers").setup()
