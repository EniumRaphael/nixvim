{
  plugins = {
    colorizer.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        arduino_language_server = {
          enable = true;
          cmd = [
            "arduino-language-server"
            "-cli"
            "arduino-cli"
            "-clangd"
            "clangd"
          ];
        };
        asm_lsp = {
          enable = true;
          filetypes = [
            "asm"
            "s"
            "S"
          ];
          cmd = [
            "asm-lsp"
          ];
          onAttach = {
            function = ''
              vim.env.ASM_LSP_CONFIG = vim.fn.getcwd() .. "/asm-lsp.toml"
            '';
          };        };
        clangd = {
          enable = true;
          cmd = [
            "clangd"
            "--background-index"
            "--clang-tidy"
            "--cross-file-rename"
            "--completion-style=detailed"
            "--header-insertion=iwyu"
          ];
          filetypes = [
            "c"
            "cpp"
            "tpp"
          ];
        };
        nixd = {
          enable = true;
          settings.nixd = {
            formatting.command = [
              "nixfmt"
            ];
            options = {
              nixpkgs.expr = "import <nixpkgs> {}";
              nixos.expr = "(import <nixpkgs/nixos> { }).config";
            };
          };
        };
        pyright = {
          enable = true;
          settings.python.analysis = {
            autoSearchPath = true;
            diagnosticsMode = "workspace";
            useLibraryCodeForTypes = true;
            typeCheckingMode = "basic";
          };
        };
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
          settings = {
            check.command = "clippy";
            cargo = {
              allFeatures = true;
              buildScripts.enable = true;
            };
            diagnostics = {
              disabled = [ "unlinked-file" ];
            };
            procMacro.enable = true;
            imports = {
              granularity.group = "module";
              prefix = "self";
            };
            inlayHints = {
              lifetimeElisionHints.enable = "always";
              typeHints.enable = true;
              parameterHints.enable = true;
              chainingHints.enable = true;
              closureReturnTypeHints.enable = "always";
            };
          };
        };
        vtsls = {
          enable = true;
          settings = {
            typescript.inlayHints = {
              parameterNames.enabled = "all";
              parameterTypes.enabled = true;
              variableTypes.enabled = true;
              propertyDeclarationTypes.enabled = true;
              functionLikeReturnTypes.enabled = true;
              enumMemberValues.enabled = true;
            };
            javascript.inlayHints = {
              parameterNames.enabled = "all";
              parameterTypes.enabled = true;
              variableTypes.enabled = true;
              propertyDeclarationTypes.enabled = true;
              functionLikeReturnTypes.enabled = true;
              enumMemberValues.enabled = true;
            };
          };
        };
        dockerls = {
          enable = true;
          filetypes = [
            "dockerfile"
          ];
        };
        docker_compose_language_service = {
          enable = true;
          filetypes = [
            "yaml"
            "yml"
          ];
          settings = {
            dockerCompose = {
              schema = "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json";
              validate = true;
              lint = {
                deprecatedProperties = true;
                duplicateKeys = true;
              };
            };
          };
        };
        yamlls = {
          enable = true;
          settings = {
            yaml = {
              schemas = {
                "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                  "docker-compose*.yml";
              };
              validate = true;
              format.enable = true;
              completion = true;
              hover = true;
            };
          };
        };
      };
    };
    nix = {
      enable = true;
    };
    trouble = {
      enable = true;
      settings = {
        position = "bottom";
        height = 12;
        width = 50;
        mode = "workspace_diagnostics";
        fold_open = "";
        fold_closed = "";
        group = true;
        padding = true;
        auto_preview = false;
        auto_fold = false;
        use_diagnostic_signs = true;
      };
    };
    lsp-signature = {
      enable = true;
      settings.hint_prefix = "😼 ";
    };
    comment = {
      enable = true;
      settings = {
        toggler.line = "<C-/>";
        opleader.line = "<C-/>";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics du workspace";
    }
    {
      mode = "n";
      key = "<leader>ct";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
      options.desc = "Diagnostics du document";
    }
 {
     mode = "n";
      key = "<leader>cr";
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
      options.desc = "Références LSP";
    }
  ];
}
