return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        ts_ls = function(_, opts)
          local mason_registry = require("mason-registry")
          local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
            .. "/node_modules/@vue/language-server"

          opts.init_options = {
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = vue_language_server_path,
                languages = { "vue" },
              },
            },
          }
          opts.filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
          opts.settings = {
            typescript = {
              tsserver = {
                useSyntaxServer = false,
              },
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          }
        end,
        volar = function(_, opts)
          opts.settings = {
            settings = {
              typescript = {
                inlayHints = {
                  enumMemberValues = {
                    enabled = true,
                  },
                  functionLikeReturnTypes = {
                    enabled = true,
                  },
                  propertyDeclarationTypes = {
                    enabled = true,
                  },
                  parameterTypes = {
                    enabled = true,
                    suppressWhenArgumentMatchesName = true,
                  },
                  variableTypes = {
                    enabled = true,
                  },
                },
              },
            },
          }
        end,
      },
      servers = {
        ts_ls = {},
      },
    },
  },
}
