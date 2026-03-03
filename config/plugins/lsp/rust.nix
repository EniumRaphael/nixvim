{
plugins.lsp.servers.rust_analyzer = {
  enable = true;
  installRustc = true;
  installCargo = true;
  settings = {
    check = {
      command = "clippy";
      useTidy = true;
      features = "all";
    };

    cargo = {
      rust = {
        rustcSource = "discover";
      };
      allFeatures = true;
      buildScripts = {
        enable = true;
      };
      features = "all";
      loadOutDirsFromCheck = true;
    };

    diagnostics = {
      disabled = [
        "unlinked-file"
        "unresolved-proc-macro"
      ];
      enable = [
        "unresolved-proc-macro"
      ];
      warningsAsHint = [
        "unresolved-proc-macro"
      ];
    };

    procMacro = {
      enable = true;
    };

    imports = {
      granularity = {
        group = "module";
      };
      prefix = "self";
      prefer = "shortest";
    };

    inlayHints = {
      lifetimeElisionHints = {
        enable = "always";
        useParameterNames = true;
      };
      typeHints = {
        enable = true;
        hideClosureInitialization = false;
      };
      parameterHints = {
        enable = true;
        hideClosureInitialization = false;
      };
      chainingHints = {
        enable = true;
      };
      closureReturnTypeHints = {
        enable = "always";
      };
      maxLength = 25;
    };

    rustfmt = {
      enable = true;
      overrideCommand = [
        "rustfmt"
        "--edition"
        "2021"
        "--config"
        "max_width=100"
        "--config"
        "tab_spaces=4"
      ];
    };

    cargoTest = {
      enable = true;
      features = "all";
    };

    lens = {
      enable = true;
      run = {
        enable = true;
      };
      debug = {
        enable = true;
      };
      implementations = {
        enable = true;
      };
    };
  };
};
}
