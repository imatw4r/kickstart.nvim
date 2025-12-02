vim.lsp.config.pyright = {
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
                diagnosticSeverityOverrides = {
                  reportUnusedVariable = "warning",
                },
                typeCheckingMode = "off", -- Set type-checking mode to off
                diagnosticMode = "off", -- Disable diagnostics entirely
            },
        },
    }

}
return {}
