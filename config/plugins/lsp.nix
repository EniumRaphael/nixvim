{
  plugins = {
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
        };
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
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<cr>";
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<cr>";
    }
    {
      mode = "n";
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
    }
    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
    }
    {
      mode = "n";
      key = "<leader>rn";
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
    }
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
    }
  ];
}
