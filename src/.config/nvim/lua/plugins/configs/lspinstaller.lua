local present1, lsp_installer = pcall(require, "nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
lsp_installer.on_server_ready(function(server)
    local opts = { }
    server:setup(opts)
    vim.cmd([[ do User LspAttach Buffers ]])
end)
